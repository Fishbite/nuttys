// get all the buttons from the document
// this will create a node list
btns = document.querySelectorAll(".tab-btn");
console.log("Buttons node list:", btns);

//  get the about class
about = document.querySelector(".about");
console.log("about", about);

// get our articles to show/hide
const articles = document.querySelectorAll(".content");
console.log("articles node list", articles);

// attach an event listener to the about class
about.addEventListener("click", clickhandler, false);

function clickhandler(e) {
  // we want to identify which button was clicked
  // each button has a custom data attribute of `data-id`
  console.log(e.target.dataset.id);
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
      console.log("clicked button:", btn);
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
