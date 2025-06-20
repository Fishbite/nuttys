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
    // echo '$loc: ' . $loc . "\n";

    if ($filter->isExcluded($loc)) {
        continue;
    }

    // create the label text by extracting the trailing name of the parsed URL
    // after replacing any "-"'s with spaces  " "
    $label = ucfirst(str_replace('-', ' ', basename(parse_url($loc, PHP_URL_PATH), '.html')));
    // echo '$label: ' . $label . "\n";

    // Skip any empty label or label that equals 'www.nuttyskitchen.co.uk'
    if (empty($label) || strtolower($label) === 'www.nuttyskitchen.co.uk') {
        continue;
    }

    // convert the first letter of the string to uppercase
    $firstLetter = strtoupper($label[0]);

    if (!isset($recipesByLetter[$firstLetter])) {
        $recipesByLetter[$firstLetter] = [];
    }

    $recipesByLetter[$firstLetter][] = [
        'href' => $loc,
        'label' => $label
    ];
    // echo print_r($recipesByLetter[$firstLetter][0]) . "\n";
}

ksort($recipesByLetter);

$azNav = "";
foreach (array_keys($recipesByLetter) as $letter) {
    $azNav .= "<a href=\"#$letter\">$letter</a> ";
}

// echo '$azNav: ' . $azNav . "\n";

$recipeGroupsHtml = "";
foreach ($recipesByLetter as $letter => $recipes) {
    usort($recipes, fn ($a, $b) => strcasecmp($a['label'], $b['label']));

    $recipeGroupsHtml .= "<section class=\"alpha-group\" id=\"$letter\">\n";
    $recipeGroupsHtml .= "  <h2 class=\"alpha-label\">$letter</h2>\n";
    $recipeGroupsHtml .= "  <div class=\"recipe-grid\">\n";
    foreach ($recipes as $recipe) {
        $recipeGroupsHtml .= "    <a href=\"{$recipe['href']}\">{$recipe['label']}</a>\n";
    }
    $recipeGroupsHtml .= "  </div>\n";
    $recipeGroupsHtml .= "</section>\n";
}

// echo '$recipeGroupsHtml: ' . $recipeGroupsHtml;

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
        <li><a href="/recipe-links.html">Index</a></li>
        <li><a
            href="https://recipes.nuttyskitchen.co.uk/recipes"
            class="recipe-page-link"
            data-fallback="https://www.nuttyskitchen.co.uk/recipepage.html"
            data-test-image="https://recipes.nuttyskitchen.co.uk/images/icons/blank.svg"
          >
            Recipes
          </a></li>
        <li><a href="/contact-form.html">Contact</a></li>        
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

    <section class="recipe-link-wrap">
      <!-- A-Z anchor nav -->
    <nav class="recipe-index az-nav" aria-label="alphabet navigation">
      $azNav
    </nav>

    <!-- Recipe groups -->
    <main class="recipe-groups">
      <div class="recipes-container">
        $recipeGroupsHtml
      <div>
    </main>
    </section>
    

    <script src="/src/app.js"></script>
    <script>
      document.querySelectorAll(".az-nav a").forEach((link) => {
        link.addEventListener("click", function (event) {
          event.preventDefault(); // Prevent default anchor behavior

          // Get the target section's ID from the href attribute
          // `this` referes to the element that triggered the event
          // listener i.e. the <a> that was clicked
          // `substring(1)` strips the # off the `href` value i.e. #A
          const targetId = this.getAttribute("href").substring(1);
          const targetElement = document.getElementById(targetId);

          // Scroll to the target section, adjusting for the navigation height
          const navHeight = document.querySelector(".az-nav").offsetHeight;
          const targetPosition =
            targetElement.getBoundingClientRect().top +
            window.scrollY -
            navHeight;

          window.scrollTo({
            top: targetPosition,
          });
        });
      });
    </script>
  </body>
</html>
HTML;

// file_put_contents(__DIR__ . '/../recipe-groups.html', $recipeGroupsHtml);
file_put_contents($output, $template);
echo "✅ Recipe index generated: $output\n";
