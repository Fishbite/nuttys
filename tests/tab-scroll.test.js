/* 
    This test scans the recipe index page for recipe links, opens each recipe, simulates switching tabs, records the scroll position for the method tab, switches away and back, and asserts the method scroll is restored.

    What the test does

    Reads recipe-links.html and extracts relative .html links.
    Opens each recipe URL under http://localhost:8080.
    Clicks tabs, scrolls the method content or window, switches away and back, and checks scroll restoration.
    Logs PASS/FAIL and prints a summary.

    ********************************************
    Run instructions (Windows, from project root c:\Stuart\Root\nuttyskitchen\nuttys

    Install required packages:

    Open terminal in project root and run:

    npm init -y
    npm i puppeteer --save-dev
    npm i http-server --save-dev

    Start a static server (serves files at http://localhost:8080):

    npx http-server -p 8080
*/

const fs = require("fs");
const path = require("path");
const puppeteer = require("puppeteer");

const ROOT = path.resolve(__dirname, ".."); // c:\Stuart\Root\nuttyskitchen\nuttys
const INDEX_FILE = path.join(ROOT, "recipe-links.html");
const BASE_URL = "http://localhost:8080"; // start a local server at project root

function extractLinks(html) {
  // very small parser: grab hrefs in anchors inside file
  const re = /<a\s+[^>]*href=["']([^"']+)["'][^>]*>/gi;
  const links = [];
  let m;
  while ((m = re.exec(html))) {
    let href = m[1].trim();
    // ignore absolute external links
    if (href.startsWith("http") || href.startsWith("mailto:")) continue;
    // normalize paths beginning with / or ../ or relative
    if (href.startsWith("/")) href = href;
    else href = "/" + href.replace(/^\.\//, "");
    links.push(href);
  }
  // dedupe and return
  return Array.from(new Set(links));
}

(async () => {
  if (!fs.existsSync(INDEX_FILE)) {
    console.error("Index file not found:", INDEX_FILE);
    process.exit(1);
  }
  const html = fs.readFileSync(INDEX_FILE, "utf8");
  const links = extractLinks(html).filter((p) => p.endsWith(".html"));
  if (!links.length) {
    console.error("No html links found in recipe-links.html");
    process.exit(1);
  }

  const browser = await puppeteer.launch({
    headless: false,
    defaultViewport: { width: 1200, height: 900 },
  });
  const page = await browser.newPage();

  const results = [];

  for (const rel of links) {
    const url = new URL(rel, BASE_URL).href;
    console.log("Testing:", url);
    await page.goto(url, { waitUntil: "networkidle2" });

    // wait for the tabs UI
    await page
      .waitForSelector(".btn-container", { timeout: 3000 })
      .catch(() => {});
    const hasTabs = await page.$(".btn-container");
    if (!hasTabs) {
      console.log("  no .btn-container found — skipping");
      results.push({ url, skip: true });
      continue;
    }

    // helper in page context
    const testResult = await page.evaluate(async () => {
      const wait = (ms) => new Promise((res) => setTimeout(res, ms));
      const methodBtn = document.querySelector('.tab-btn[data-id="method"]');
      const ingBtn = document.querySelector('.tab-btn[data-id="ingredients"]');
      const methodEl = document.getElementById("method");

      if (!methodBtn || !ingBtn || !methodEl)
        return { error: "missing elements" };

      // ensure ingredients visible initially (if page default is ingredients)
      // click method to show it
      methodBtn.click();
      await wait(100);

      // determine whether methodEl scrolls or page scrolls
      const elScrollable = methodEl.scrollHeight > methodEl.clientHeight;

      // scroll to some position inside method
      if (elScrollable) {
        methodEl.scrollTop = Math.min(
          200,
          methodEl.scrollHeight - methodEl.clientHeight
        );
      } else {
        // scroll window so method is about 150px from top
        const top = methodEl.getBoundingClientRect().top + window.scrollY - 150;
        window.scrollTo({ top, behavior: "auto" });
      }
      await wait(150);

      const savedPos = elScrollable ? methodEl.scrollTop : window.scrollY;

      // click ingredients, wait
      ingBtn.click();
      await wait(150);

      // click method again
      methodBtn.click();
      await wait(150);

      const restored = elScrollable ? methodEl.scrollTop : window.scrollY;

      const ok = Math.abs(restored - savedPos) <= 4; // small tolerance
      return { ok, savedPos, restored, elScrollable };
    });

    results.push({ url, ...testResult });
    console.log(
      "  result:",
      testResult.ok ? "PASS" : "FAIL",
      "saved",
      testResult.savedPos,
      "restored",
      testResult.restored,
      "elScrollable",
      testResult.elScrollable
    );
  }

  await browser.close();

  // summary
  const passes = results.filter((r) => r.ok).length;
  const fails = results.filter((r) => r.ok === false).length;
  const skipped = results.filter((r) => r.skip).length;
  console.log("\nSummary:", { total: results.length, passes, fails, skipped });
  results.forEach((r) => {
    if (r.ok === false) console.log("FAIL:", r.url, "->", r);
  });

  process.exit(fails ? 2 : 0);
})();
