// generateSQL.mjs
import { gridContent } from "./gridContent_test_1.1.mjs";
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
    description VARCHAR(255) NOT NULL,
    UNIQUE KEY unique_recipe (category, page),
    KEY idx_description (description)
);`);

categoryCardsSQL.push(`CREATE TABLE IF NOT EXISTS category_cards (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    description TEXT NOT NULL
);`);

// Populate category_cards table from gridContent
const categoryNames = new Set();
gridContent.forEach((item) => {
  if (item.type === "category") {
    const categoryName = item.cat.replace(/'/g, "''");
    const categoryDescription = item.text.replace(/'/g, "''");
    categoryNames.add(categoryName);

    categoryCardsSQL.push(
      `INSERT INTO category_cards (name, description) VALUES ('${categoryName}', '${categoryDescription}')
      ON DUPLICATE KEY UPDATE description='${categoryDescription}';`
    );
  }
});

// Populate recipe_cards table
gridContent.forEach((item) => {
  if (item.type === "recipe") {
    const category = item.cat ? item.cat.replace(/'/g, "''") : "";
    const image = item.imgSrc ? item.imgSrc.replace(/'/g, "''") : "";
    const caption = item.caption ? item.caption.replace(/'/g, "''") : "";
    const page = item.page ? item.page.replace(/'/g, "''") : "";
    const imgTitle = item.imgTitle ? item.imgTitle.replace(/'/g, "''") : "";
    const description = item.desc ? item.desc.replace(/'/g, "''") : "";

    recipeCardsSQL.push(
      `INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('${category}', '${image}', '${caption}', '${page}', '${imgTitle}', '${description}')
             ON DUPLICATE KEY UPDATE 
             image='${image}', caption='${caption}', imgTitle='${imgTitle}', description='${description}';`
    );
  }
});

// Generate SQL to delete removed recipes
const existingRecipesSQL = `
    DELETE FROM recipe_cards 
    WHERE (category, page) NOT IN (
        ${gridContent
          .filter((item) => item.type === "recipe")
          .map(
            (item) =>
              `('${item.cat.replace(/'/g, "''")}', '${item.page.replace(
                /'/g,
                "''"
              )}')`
          )
          .join(",\n        ")}
    );
`;

// Generate SQL to delete removed categories
const existingCategoriesSQL = `
    DELETE FROM category_cards 
    WHERE name NOT IN (
        ${Array.from(categoryNames)
          .map((name) => `'${name}'`)
          .join(",\n        ")}
    )
    AND name NOT IN (SELECT DISTINCT category FROM recipe_cards);
`;

/* ############ WRITE SQL OUTPUT TO FILE ############*/
/*  
  This code will write the SQL output to two files on your computer. 
  You can then import the SQL file into your database.

  To run this code, you will need to have Node.js installed on your computer.
  
  1. change the current directory to that where generateSQL.js is located: 

  C:\Stuart\Root\nuttyskitchen\nuttys> cd src
  
  2. run the following command in the terminal:

  node generateSQL.mjs
  C:\Stuart\Root\nuttyskitchen\nuttys\src> node generateSQL.mjs

  3. The SQL files will be generated in the specified paths.
*/

const recipesOutputFilePath =
  "C:/Stuart/Root/nuttyskitchen/nuttys/SQL/inserts_recipes.sql";
const categoriesOutputFilePath =
  "C:/Stuart/Root/nuttyskitchen/nuttys/SQL/inserts_categories.sql";

// Write SQL files
fs.writeFileSync(
  recipesOutputFilePath,
  recipeCardsSQL.join("\n") + "\n" + existingRecipesSQL
);
fs.writeFileSync(
  categoriesOutputFilePath,
  categoryCardsSQL.join("\n") + "\n" + existingCategoriesSQL
);

console.log("SQL files generated successfully.");
