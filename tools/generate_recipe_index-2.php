<?php
require_once __DIR__ . '/SitemapFilter.php';

$filter = new SitemapFilter();
$sitemap = __DIR__ . '/../sitemap.xml';
$output = __DIR__ . '/../recipe-links.html';

$xml = simplexml_load_file($sitemap);
$urls = $xml->url;

$recipesByLetter = [];

foreach ($urls as $entry) {
    $loc = (string) $entry->loc;

    if ($filter->isExcluded($loc)) {
        continue;
    }

    $path = parse_url($loc, PHP_URL_PATH);
    $basename = basename($path, '.html');

    // Skip root paths or anything with no basename
    if ($basename === '') {
        continue;
    }

    $label = ucfirst(str_replace('-', ' ', $basename));
    $firstLetter = strtoupper($label[0]);


    if (!isset($recipesByLetter[$firstLetter])) {
        $recipesByLetter[$firstLetter] = [];
    }

    $recipesByLetter[$firstLetter][] = [
        'href' => $loc,
        'label' => $label
    ];
}

ksort($recipesByLetter);

$azNav = "";
foreach (array_keys($recipesByLetter) as $letter) {
    $azNav .= "<a href=\"#$letter\">$letter</a> ";
}

$recipeGroupsHtml = "";
foreach ($recipesByLetter as $letter => $recipes) {
    usort($recipes, fn ($a, $b) => strcasecmp($a['label'], $b['label'])); // sort recipes A-Z
  
    $recipeGroupsHtml .= "<section class=\"alpha-group\" id=\"$letter\">\n";
    $recipeGroupsHtml .= "  <h2>$letter</h2>\n";
    $recipeGroupsHtml .= "  <div class=\"recipe-grid\">\n";
    foreach ($recipes as $recipe) {
        $recipeGroupsHtml .= "    <a href=\"{$recipe['href']}\">{$recipe['label']}</a>\n";
    }
    $recipeGroupsHtml .= "  </div>\n";
    $recipeGroupsHtml .= "</section>\n";
}

$template = <<<HTML
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Full recipe index for Nutty's Kitchen, listing every delicious dish from A to Z." />
    <title>Recipe Index | Nutty's Kitchen</title>
    <link rel="icon" href="/favicon.svg" />
    <link rel="canonical" href="https://www.nuttyskitchen.co.uk/recipe-links.html" />

    <!-- Fonts and styles -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="/styles/tabs-nav.css" />  
    <link rel="stylesheet" href="/styles/recipe-index.css" />
  </head>
  <body>
    <a href="#content" class="skip-link">Skip to Main Content</a>

    <nav class="nav-main" aria-label="main navigation">
      <ul>
        <li><a href="/">Home</a></li>
        <li><a href="/recipes/" class="recipe-page-link">Recipes</a></li>
        <li><a href="/contact-form.html">Contact Us</a></li>
      </ul>
    </nav>

    <div class="nav-container" id="nav-container"></div>

    <header class="title">
      <div class="title-wrap">
        <img src="/images/logo-left.svg" alt="logo left" width="60" height="32" />
        <h1 id="content">Recipe Index</h1>
        <img src="/images/logo-right.svg" alt="logo right" width="60" height="32" />
      </div>
      <img class="logo-main" src="/images/nuttys-kitchen-logo.svg" alt="Nutty's Kitchen logo" width="160" height="40" />
      <p class="fb-form head-p">
        For those who like to read books, we thought we'd give you an index page. They're quite useful when all else fails!
      </p>
    </header>

    <!-- A-Z anchor nav -->
    <nav class="az-nav" aria-label="alphabet navigation">
      $azNav
    </nav>

    <!-- Recipe groups -->
    <main>
      $recipeGroupsHtml
    </main>

    <script src="/src/app.js"></script>
  </body>
</html>
HTML;

file_put_contents($output, $template);
echo "✅ Recipe index generated: $output\n";
