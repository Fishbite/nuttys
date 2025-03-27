// generateSQL.js
// const fs = require("fs"); // Node.js file system module

import fs from "fs"; // Use ES module syntax for importing the file system module
// const gridContent = require("./gridContent"); // Assuming gridContent.js exports the array

import { gridContent } from "./gridContent.mjs";

let recipeSQL =
  "INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) VALUES\n";
let categorySQL = "INSERT INTO category_cards (name, description) VALUES\n";

const recipeValues = [];
const categoryValues = [];

// Track unique categories to avoid duplicate entries in category_cards
const uniqueCategories = new Set();

for (const item of gridContent) {
  if (item.type === "recipe") {
    recipeValues.push(
      `('${item.cat}', '${item.image}', '${item.caption}', '${item.page}', '${item.imgTitle}', '${item.description}')`
    );
  } else if (item.type === "category" && !uniqueCategories.has(item.cat)) {
    uniqueCategories.add(item.cat);
    categoryValues.push(`('${item.cat}', '${item.text}')`);
  }
}

// Finalize SQL statements
if (recipeValues.length) {
  recipeSQL += recipeValues.join(",\n") + ";\n";
} else {
  recipeSQL = "";
}

if (categoryValues.length) {
  categorySQL += categoryValues.join(",\n") + ";\n";
} else {
  categorySQL = "";
}

/* ############ WRITE SQL OUTPUT TO FILE ############*/
/*  
  This code will write the SQL output to two files on your computer. 
  You can then import the SQL file into your database.

  To run this code, you will need to have Node.js installed on your computer.
  
  1. change the current directory to that where generateSQL.js is located: 

  C:\Stuart\Root\nuttyskitchen\nuttys> cd src
  
  2. run the following command in the terminal:

  node generateSQL.mjs
  C:\Stuart\Root\nuttyskitchen\nuttys\src> node generateSQL.js

*/

const recipesOutputFilePath =
  "C:/Stuart/Root/nuttyskitchen/nuttys/SQL/inserts_recipes.sql";
const categoriesOutputFilePath =
  "C:/Stuart/Root/nuttyskitchen/nuttys/SQL/inserts_categories.sql";

// Write SQL to files

// Write SQL to files
// fs.writeFileSync("insert_recipes.sql", recipeSQL, "utf8");
// fs.writeFileSync("insert_categories.sql", categorySQL, "utf8");

// fs.writeFile(recipesOutputFilePath, recipeSQL, function (err) {
//   if (err) throw err;
//   console.log("SQL statements written to file: " + recipesOutputFilePath);
// });

// fs.writeFile(categoriesOutputFilePath, categorySQL, function (err) {
//   if (err) throw err;
//   console.log("SQL statements written to file: " + categoriesOutputFilePath);
// });

fs.writeFileSync(recipesOutputFilePath, recipeSQL, "utf8");
fs.writeFileSync(categoriesOutputFilePath, categorySQL, "utf8");

console.log("SQL files generated successfully.");
