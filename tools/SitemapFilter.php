<?php
// Purpose: exclude files from sitemap.xlm when running generate_recipe_index_sitemap.php
class SitemapFilter
{
    private array $excludePaths = [
        '/',
        '/index.html',
        '/contact-form.html',
        '/recipepage.html',
        '/1year.html',
        '/template-bare.html',
        '/template-bare-BAK.html',
        '/searchbar.html',
        '/search.html',
        '/recipes3.html',
        '/nettes.html',
        '/logo-test.html',
        '/kofitest.html',
        '/index-spice.html',
        '/upload-recipe-form.html',
        '/cauliflower-cheese.html',
        '/spice-up-your-life.html',
    ];
    

    private array $excludePatterns = [
        '#^/tools/.*\.php$#',              // Exclude PHP tools in /tools/
        '#/google[\w\-]+\.html$#',         // Specific one-off Google file
        '#^/(?!.*\.html$).*#',             // Exclude all URLs NOT ending in .html
    ];
    /*      The regex:

             Explanation of the last line:

        ^/ = match from root

        (?!.*\.html$) = negative lookahead for .html at the end

        .* = anything else

        #...# = regex delimiter
    */
    

    public function isExcluded(string $url): bool
    {
        $path = parse_url($url, PHP_URL_PATH);

        if (in_array($path, $this->excludePaths, true)) {
            return true;
        }

        foreach ($this->excludePatterns as $pattern) {
            if (preg_match($pattern, $path)) {
                return true;
            }
        }

        return false;
    }
}
