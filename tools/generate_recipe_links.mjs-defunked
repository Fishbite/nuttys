// generate_recipe_links.mjs
// Purpose: generates file `recipe-links-list.html` - list of recipes
import { gridContent } from "../src/gridContent.mjs";
import fs from "fs";

// Filter recipes only
const recipes = gridContent
  .filter((item) => item.type === "recipe")
  .map((item) => ({
    page: item.page,
    caption: item.caption,
  }))
  .sort((a, b) => a.caption.localeCompare(b.caption));

// Build HTML list
let html = `<ul class="recipe-links">\n`;
recipes.forEach((recipe) => {
  html += `  <li><a href="recipes/${recipe.page}.html">${recipe.caption}</a></li>\n`;
});
html += `</ul>\n`;

fs.writeFileSync("../recipe-links-list.html", html, "utf-8");
console.log("✅ recipe-links.html generated!");
