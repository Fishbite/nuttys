<?php
// run: `cd tools` then `php generate_recipe_index-mjs.php` from command line
// creates/overwrites recipe-links.html - SO CHANGE $output to test!!!!!!!!!!!!!!!
// Build recipe-links.html from gridContent.mjs using the same HEREDOC template

$gridContentFile = __DIR__ . '/../src/gridContent.mjs';         // <-- update if needed
$output          = __DIR__ . '/../recipe-links.html';  // safe test output

if (!file_exists($gridContentFile)) {
    die("Error: gridContent.mjs not found at $gridContentFile\n");
}

$mjs = file_get_contents($gridContentFile);
if ($mjs === false) {
    die("Error: Unable to read gridContent.mjs\n");
}

// 1) Grab each object that has type: "recipe"
$recipeObjectsPattern = '/\{[^{}]*?type\s*:\s*["\']recipe["\'][\s\S]*?\}/i';
preg_match_all($recipeObjectsPattern, $mjs, $objMatches);

$recipes = [];
foreach ($objMatches[0] as $obj) {
    // 2) Extract caption (must be "...")
    // if (!preg_match('/caption\s*:\s*["\']([^"\']+)["\']/', $obj, $mCap)) {
    //     continue;
    // }
    if (!preg_match('/caption\s*:\s*([`"\'])(.*?)\1/s', $obj, $mCap)) {
        continue;
    }
    // 3) Extract page (can be "...", '...', or `...`)
    // if (!preg_match('/page\s*:\s*[`"\']([^`"\']+)[`"\']/', $obj, $mPage)) {
    //     continue;
    // }
    if (!preg_match('/page\s*:\s*([`"\'])(.*?)\1/s', $obj, $mPage)) {
        continue;
    }

    $caption = trim($mCap[2]);
    $page    = trim($mPage[2]); // slug without .html

    // Guard: must start with A–Z (you said there should be none otherwise)
    if ($caption === '' || !ctype_alpha($caption[0])) {
        continue;
    }

    $recipes[] = ['caption' => $caption, 'page' => $page];
}

if (!$recipes) {
    die("No recipes found in gridContent.mjs\n");
}

// 4) Sort by caption (case-insensitive)
usort($recipes, fn ($a, $b) => strcasecmp($a['caption'], $b['caption']));

// 5) Group by first letter
$recipesByLetter = [];
foreach ($recipes as $r) {
    $letter = strtoupper($r['caption'][0]);
    $recipesByLetter[$letter][] = $r;
}
ksort($recipesByLetter);

// 6) Build A–Z nav (skip empty letters)
$azNav = '';
foreach (array_keys($recipesByLetter) as $letter) {
    $azNav .= "<a href=\"#$letter\">$letter</a> ";
}

// 7) Build grouped HTML (match your existing structure/classes)
$recipeGroupsHtml = '';
foreach ($recipesByLetter as $letter => $items) {
    $recipeGroupsHtml .= "<section class=\"alpha-group\" id=\"$letter\" aria-labelledby=\"heading-$letter\">\n";
    $recipeGroupsHtml .= "  <h2 class=\"alpha-label\" id=\"heading-$letter\">$letter</h2>\n";
    $recipeGroupsHtml .= "  <div class=\"recipe-grid\">\n";
    foreach ($items as $it) {
        // $href  = "/../" . rawurlencode($it['page']) . ".html";
        // FIX for above
        $href  = "/../" . rawurlencode($it['page']) . ".html";
        
        $label = htmlspecialchars($it['caption'], ENT_QUOTES | ENT_SUBSTITUTE, 'UTF-8');
        $recipeGroupsHtml .= "    <a href=\"{$href}\">{$label}</a>\n";
    }
    $recipeGroupsHtml .= "  </div>\n";
    $recipeGroupsHtml .= "</section>\n";
}

// 8) Your exact HEREDOC template
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
          event.preventDefault();
          const targetId = this.getAttribute("href").substring(1);
          const targetElement = document.getElementById(targetId);
          const navHeight = document.querySelector(".az-nav").offsetHeight;
          const targetPosition = targetElement.getBoundingClientRect().top + window.scrollY - navHeight;
          window.scrollTo({ top: targetPosition });
        });
      });
    </script>
  </body>
</html>
HTML;

// 9) Write the file
if (file_put_contents($output, $template) === false) {
    die("Error: Unable to write to $output\n");
}

echo "✅ Recipe index generated: $output\n";
