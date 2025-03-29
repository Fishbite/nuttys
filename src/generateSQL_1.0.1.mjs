// generateSQL.mjs
import { gridContent } from "./gridContent.mjs";
import fs from "fs";

const recipeCardsSQL = [];
const categoryCardsSQL = [];

// Generate SQL for recipe_cards and category_cards tables
recipeCardsSQL.push(`CREATE TABLE IF NOT EXISTS recipe_cards (
    id INT AUTO_INCREMENT PRIMARY KEY,
    category VARCHAR(50) NOT NULL,
    image VARCHAR(255) NOT NULL,
    caption VARCHAR(255) NOT NULL,
    page VARCHAR(100) NOT NULL,
    imgTitle VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL
);`);

categoryCardsSQL.push(`CREATE TABLE IF NOT EXISTS category_cards (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description TEXT NOT NULL
);`);

// Populate category_cards table from gridContent
const categorySet = new Set();
gridContent.forEach((item) => {
  if (item.type === "category" && !categorySet.has(item.cat)) {
    categorySet.add(item.cat);
    categoryCardsSQL.push(
      `INSERT INTO category_cards (name, description) VALUES ('${item.cat.replace(
        /'/g,
        "''"
      )}', '${item.text.replace(/'/g, "''")}');`
    );
  }
});

// Populate recipe_cards table
gridContent.forEach((item) => {
  if (item.type === "recipe") {
    const category = item.cat ? item.cat.replace(/'/g, "''") : "";
    const image = item.img ? item.img.replace(/'/g, "''") : "";
    const caption = item.caption ? item.caption.replace(/'/g, "''") : "";
    const page = item.page ? item.page.replace(/'/g, "''") : "";
    const imgTitle = item.imgTitle ? item.imgTitle.replace(/'/g, "''") : "";
    const description = item.text ? item.text.replace(/'/g, "''") : "";

    recipeCardsSQL.push(
      `INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('${category}', '${image}', '${caption}', '${page}', '${imgTitle}', '${description}');`
    );
  }
});

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

  ask co-pilot if you need help with this
  3. The SQL files will be generated in the specified paths.

*/

const recipesOutputFilePath =
  "C:/Stuart/Root/nuttyskitchen/nuttys/SQL/inserts_recipes.sql";
const categoriesOutputFilePath =
  "C:/Stuart/Root/nuttyskitchen/nuttys/SQL/inserts_categories.sql";

// Write SQL files
fs.writeFileSync(recipesOutputFilePath, recipeCardsSQL.join("\n"));
fs.writeFileSync(categoriesOutputFilePath, categoryCardsSQL.join("\n"));

console.log("SQL files generated successfully.");
