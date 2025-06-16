<?php
require_once __DIR__ . '/SitemapFilter.php';

$filter = new SitemapFilter();
$sitemap = __DIR__ . '/../sitemap.xml';
$output = __DIR__ . '/../recipe-links.html';

$xml = simplexml_load_file($sitemap);
$urls = $xml->url;

$recipeLinks = [];

// Extract and filter links
foreach ($urls as $entry) {
    $loc = (string) $entry->loc;

    if ($filter->isExcluded($loc)) {
        continue;
    }

    $path = parse_url($loc, PHP_URL_PATH);

    $label = ucfirst(str_replace('-', ' ', basename($path, '.html')));
    $label = trim($label);

    if ($label === '') {
        continue; // Skip invalid or empty labels
    }

    $anchor = strtoupper($label[0]);
    $recipeLinks[$anchor][] = [
        'href' => $loc,
        'label' => $label,
    ];

}

// Sort links alphabetically
ksort($recipeLinks);
foreach ($recipeLinks as &$group) {
    usort($group, fn ($a, $b) => strcmp($a['label'], $b['label']));
}

$html = "<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n";
$html .= "  <meta charset=\"UTF-8\">\n";
$html .= "  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n";
$html .= "  <title>Recipe Index</title>\n";
$html .= "  <link rel=\"stylesheet\" href=\"/styles/recipe-index.css\">\n";
$html .= "</head>\n<body>\n";

$html .= "  <header>\n";
$html .= "    <h1>Recipe Index</h1>\n";
$html .= "    <nav class=\"index-nav\">\n";

foreach (array_keys($recipeLinks) as $letter) {
    $html .= "        <a href=\"#$letter\">$letter</a>\n";
}

$html .= "    </nav>\n";
$html .= "  </header>\n";

$html .= "  <main>\n";
foreach ($recipeLinks as $letter => $links) {
    $html .= "    <section id=\"$letter\">\n";
    $html .= "      <h2>$letter</h2>\n";
    $html .= "      <ul>\n";
    foreach ($links as $link) {
        $href = htmlspecialchars($link['href']);
        $label = htmlspecialchars($link['label']);
        $html .= "        <li><a href=\"$href\">$label</a></li>\n";
    }
    $html .= "      </ul>\n";
    $html .= "    </section>\n";
}
$html .= "  </main>\n";

$html .= "</body>\n</html>";

file_put_contents($output, $html);
echo "✅ Recipe index generated: $output\n";
