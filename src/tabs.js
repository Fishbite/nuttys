// Import the components we need
import { MakeFooter, navMenu } from "./components.js";

/*    ======================
            START TABS
      ======================
*/

// get all the buttons from the document
// this will create a node list
const btns = document.querySelectorAll(".tab-btn");
// console.log("Buttons node list:", btns);

//  get the about class
const about = document.querySelector(".about");
// console.log("about", about);

// get our articles to show/hide
const articles = document.querySelectorAll(".content");
// console.log("articles node list", articles);

// attach an event listener to the about class
if (about) {
  about.addEventListener("click", clickhandler, false);
}

function clickhandler(e) {
  // we want to identify which button was clicked
  // each button has a custom data attribute of `data-id`
  // console.log(e.target.dataset.id);
  // create a reference to e.target.dataset.id (the article)
  const id = e.target.dataset.id;

  //   thus, if a clicked element has an attribute data-id
  // we will use that to display the relevant content
  // i.e. ingredients button has data-id = ingredients, so
  // we want to show the article with id="ingredients" &
  // hide the other article at the same time

  if (id) {
    btns.forEach(function (btn) {
      // remove `active` from all buttons
      btn.classList.remove("active");
      // console.log("clicked button:", btn);
      // add the class `active` to the button that was clicked
      e.target.classList.add("active");

      // hide all articles with a class of`active
      articles.forEach(function (article) {
        article.classList.remove("active");
      });
      // add class 'active' to the relevant article
      const element = document.getElementById(id);
      element.classList.add("active");
    });
  }
}
/*    ======================
             END TABS
      ======================
*/

/*    ======================
            START FOOTER
      ======================

    The `MakeFooter` class is designed to negate the need to manually
    create a footer on each individual page. At this point in time
    you have to create the `footer` element with:

    `const footer = document.createElement("footer");
     document.body.appendChild(footer);`

     We'll add this in a method of the class, but for now it works as is..
*/
const footerEmail = `<a href="mailto:kitchen4nutty@gmail.com">email: kitchen4nutty@gmail.com</a>`;
/*
    The `footerList` parameter of `MakeFooter` expects a chain of
    `<li>List items</li>` enclosed  in backticks:
    `<li><a href="#">Contact Us</a></li><li><a href="#">test link</a></li><li><a href="#">test list</a></li>`;
    the <li> element can contain anythig that a list item can normally
    take
*/
const footerList = `<li><a href="#">Contact Us</a></li><li><a href="#">test link</a></li><li><a href="https://icons8.com" target="_blank">freezer icon by icons8</a></li>`;
const footerIp = `copyright © fishbite 2023`;

const footerContent = new MakeFooter(footerEmail, footerList, footerIp);
const footer = document.createElement("footer");
document.body.appendChild(footer);
footer.innerHTML = footerContent.render();
/*    ======================
             END FOOTER
      ======================
*/

/*    ==============================
             START NAVIGATION
      ==============================

      NB: `navContent` Object: key = file name & value = nav btn text
      e.g. index = ./index.html & value = "Welcome To My Kitchen"
*/

const navContent = {
  "index.html": "Welcome To My Kitchen",
  "recipepage.html": "Nutty's Recipe Page",
  "recipepage.html#sausages": "Sausage Chopin' Recipies",
  "recipepage.html#chicken": "Chicken Lickin' Recipies",
  "recipepage.html#beef": "Beef Bangin' Recipies",
  "recipepage.html#pork": "Pork Packin' Recipies",
  "recipepage.html#vegebakes": "Vege Bakin' Recipies",
  "recipepage.html#sauce": "Saucey Basics Recipies",

  // cheesesauce: "Cheese Sauce",
  // chickenmushroompasta: "Chicken & Mushroom Pasta",
  // test: "Test",
  // "#": "Contact Info",
};

navMenu(navContent);

/*    ==============================
             END NAVIGATION
      ==============================
*/
