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
class MakeFooter {
  constructor(social, email, list, ip) {
    this.social = social;
    this.email = email;
    this.ip = ip;
    this.list = list;
  }
  // createFooter() {
  //   const footer = document.createElement("footer");

  //   return document.body.appendChild(this.footer);
  // }
  render() {
    return `<div class="social">
    ${this.social}
    <p>${this.email}</p>
    </div> 
    <ul>${this.list}</ul>
    <p>${this.ip}</p>`;
  }
}
const social = `<a href="https://www.facebook.com/nutty.s.kitchen.co.uk" target="_blank" >
    <img src="./images/facebook-circle.png" alt="facebook logo"  />
  </a>`;

const footerEmail = `<a href="&#109;ailto&#58;nutty&#64;nuttyskitchen&#46;co&#46;uk">email: nutty&#64;nuttyskitchen&#46;co&#46;uk</a>`;
/*
    The `footerList` parameter of `MakeFooter` expects a chain of
    `<li>List items</li>` enclosed  in backticks:
    `<li><a href="#">Contact Us</a></li><li><a href="#">test link</a></li><li><a href="#">test list</a></li>`;
    the <li> element can contain anythig that a list item can normally
    take
*/

const year = new Date().getFullYear();
const footerList = `<li><a href="./contact-form.html">Contact Us</a></li><li><a href="https://www.ratufa.io/" target="_blank">ratufa.io</a></li><li><a href="https://icons8.com" target="_blank">icons by icons8</a></li>`;
const footerIp = `copyright © fishbite ${year}`;

const footerContent = new MakeFooter(social, footerEmail, footerList, footerIp);
const footer = document.createElement("footer");
document.body.appendChild(footer);
footer.innerHTML = footerContent.render();
/*    ======================
             END FOOTER
      ======================
*/

/* =======================
    Navigation Menu START
   =======================
*/
function toggleClass(e) {
  const bap = document.getElementById("bap");
  const menu = document.getElementById("menu");

  e.classList.toggle("x");
  menu.classList.toggle("left");
}

const navContent = {
  "": "Welcome To Nutty's", //NB: link to root:- www.nuttyskitchen.co.uk
  "recipepage.html": "Nutty's Recipes",
  "recipepage.html#sausages & bacon": "Sausage & Bacon",
  "recipepage.html#chicken": "Chicken Lickin'",
  "recipepage.html#beef": "Beef Bangin'",
  "recipepage.html#pork": "Pork Packin'",
  "recipepage.html#lamb": "Lamb Huggin'",
  "recipepage.html#fish & veg": "Fish & Veg' Bakin'",
  "recipepage.html#sauce": "Saucey Basics",
  "recipepage.html#accompaniments": "Accompaniments",
  "recipepage.html#puddings": "Puddin' Passion",
  "contact-form.html": "Contact Nutty",

  // cheesesauce: "Cheese Sauce",
  // chickenmushroompasta: "Chicken & Mushroom Pasta",
  // test: "Test",
  // "#": "Contact Info",
};

navMenu(navContent);

function navMenu(navContent) {
  // get the element to put the navigation menu into
  const wrapper = document.getElementById("nav-container");

  // var to hold the `<li></li>` elements
  let navList = ``;

  // var used to copy each `<li>` element to `navList`
  let tmp;

  // loop through the object holding `HTML` file names & menu titles
  for (let prop in navContent) {
    // note root reltive path ( href="/") used for SEO reasons
    tmp = navList.concat(
      `<li> <a href="/${prop}">${navContent[prop]}</a> </li>`
    );

    // copy tmp to `navList`
    navList = tmp;
  }

  // object to write the `navList` to
  const menu = {
    nav: `<div id="menu" class="menu" >
            <div id="bap" class="bap" onclick="toggleClass(this)">
                <div class="bar1"></div>
                <div class="bar2"></div>
                <div class="bar3"></div>
            </div>

        <ul>${navList}</ul>

       </div>`,
  };

  // write the navigation menu to the navigation menu wrapper element
  wrapper.innerHTML = menu.nav;
  console.log("menu done");

  return wrapper;
}

/* =======================
    Navigation Menu END
   =======================
*/
