<?php
require_once __DIR__ . '/SitemapFilter.php';

$filter = new SitemapFilter();
$sitemap = __DIR__ . '/../sitemap.xml';
$output = __DIR__ . '/../recipe-links.html';

$xml = simplexml_load_file($sitemap);
$urls = $xml->url;

$linksByLetter = [];

foreach ($urls as $entry) {
    $loc = (string) $entry->loc;

    if ($filter->isExcluded($loc)) {
        continue;
    }

    $label = ucfirst(str_replace('-', ' ', basename(parse_url($loc, PHP_URL_PATH), '.html')));
    $firstLetter = strtoupper($label[0]);
    $linksByLetter[$firstLetter][] = [
        'href' => $loc,
        'label' => $label
    ];
}

ksort($linksByLetter);

$navLetters = '';
$listItems = '';

foreach ($linksByLetter as $letter => $links) {
    $navLetters .= "<a href=\"#$letter\">$letter</a> ";
    $listItems .= "<h2 id=\"$letter\">$letter</h2>\n<ul class=\"recipe-list\">\n";
    foreach ($links as $link) {
        $href = htmlspecialchars($link['href']);
        $text = htmlspecialchars($link['label']);
        $listItems .= "  <li><a href=\"$href\">$text</a></li>\n";
    }
    $listItems .= "</ul>\n";
}

$template = <<<HTML
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="Full index of all Nutty's Kitchen recipes in A–Z format" />
  <title>Recipe Index | Nutty's Kitchen</title>
  <link rel="icon" href="favicon.svg" />
  <link rel="canonical" href="https://www.nuttyskitchen.co.uk/recipe-index.html" />
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
      <li><a href="/recipes/">Recipes</a></li>
      <li><a href="/contact-form.html">Contact Us</a></li>
    </ul>
  </nav>
  <div id="nav-container" class="nav-container"></div>

  <header class="title">
    <div class="title-wrap">
      <img src="/images/logo-left.svg" width="60" height="32" alt="logo left" />
      <h1 id="content">Recipe Index</h1>
      <img src="/images/logo-right.svg" width="60" height="32" alt="logo right" />
    </div>
    <img class="logo-main" src="/images/nuttys-kitchen-logo.svg" alt="nuttys kitchen logo" width="160" height="40" />
    <p class="fb-form head-p">
      For those who like to read books, we thought we'd give you an index page — they tend to be quite useful when all else fails!
    </p>
  </header>

  <section class="justify">
    <nav class="alpha-nav">
      $navLetters
    </nav>
    $listItems
  </section>

  <script src="./src/app.js"></script>
</body>
</html>
HTML;

file_put_contents($output, $template);
echo "✅ Recipe index generated: $output\n";
