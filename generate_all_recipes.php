<?php
// CONFIG
$sitemapFile = __DIR__ . '/sitemap.xml';
$outputFile = __DIR__ . '/all-recipes.html';

// Load the XML
$xml = simplexml_load_file($sitemapFile);
if (!$xml) {
    exit("❌ Could not load sitemap\n");
}

// Start HTML
$html = <<<HTML
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>All Recipes | Nutty's Kitchen</title>
    <meta name="description" content="Browse all of Nutty's Kitchen recipes in one place." />
    <link rel="stylesheet" href="/styles/styles.css">
</head>
<body>
    <h1>All Recipes</h1>
    <ul>
HTML;

// Loop through URLs
foreach ($xml->url as $url) {
    $loc = (string) $url->loc;

    // Skip homepage, contact, etc.
    /*
        The REGEX explained:
        #...# — regex delimiter (could also be /.../, but # avoids escaping slashes)

        / — matches a literal forward slash before the rest

        ($|...) — group of possible endings:

            $ — end of string (matches the homepage /)

            index\.html — matches /index.html

            contact — matches /contact

            recipepage\.html — matches /recipepage.html

            1year\.html — matches /1year.html

            generate_all_recipes\.php — matches that exact file

            google[\w\-]+\.html — matches Google verification files like google66a73f74d88ed190.html

            template-bare(?:-BAK)?\.html — matches template-bare.html and template-bare-BAK.html
    */
    if (
        preg_match('#/(index\.html|contact|recipepage\.html|1year\.html|generate_all_recipes\.php|google[\w\-]+\.html|template-bare(?:-BAK)?\.html)$#', $loc)
    ) {
        continue;
    }
    

    // Try to generate a readable title
    $name = basename($loc, '.html');
    $title = ucwords(str_replace(['-', '_'], ' ', $name));

    $html .= "        <li><a href=\"$loc\">$title</a></li>\n";
}

// End HTML
$html .= <<<HTML
    </ul>
</body>
</html>
HTML;

file_put_contents($outputFile, $html);
echo "✅ all-recipes.html generated!\n";
