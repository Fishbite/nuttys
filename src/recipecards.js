console.log("Cooking on gas...");

//
const grid = document.querySelector(".recipe-grid");

// class to render each grid element
// parameter is a configuration object from `gridContent` array
class GridEntry {
  constructor(config) {
    // use the config object's properties
    Object.assign(this, config);
    // console.log(this);
  }
  render() {
    // used for each category element
    if (this.type === "category") {
      const txt = `<h4>${this.cat}</h4><p>${this.text}</P>`;
      const div = document.createElement("div");
      div.innerHTML = txt;
      div.setAttribute("id", this.cat);
      grid.appendChild(div);
    }

    // used for each recipe element
    if (this.type === "recipe") {
      const txt = `<figcaption>${this.caption}</figcaption>`;
      const div = document.createElement("div");
      const img = new Image();
      img.src = this.imgSrc;
      div.innerHTML = txt;
      div.appendChild(img);
      // add `link` class to apply `:hover` state
      div.className += `link`;
      div.style.flexDirection = "column-reverse";

      div.addEventListener(
        "click",
        () => (location.href = `./${this.page}.html`)
      );

      grid.appendChild(div);
    }

    // used for each filler element
    if (this.type === "blank" && innerWidth > 650) {
      const div = document.createElement("div");
      div.style.border = "none";
      grid.appendChild(div);
    }

    // used for each info element
    if (this.type === "info") {
      const txt = `<figcaption>${this.caption}</figcaption>`;
      const div = document.createElement("div");
      const img = new Image();
      img.src = this.imgSrc;
      div.innerHTML = txt;
      div.appendChild(img);
      div.style.flexDirection = "column-reverse";
      grid.appendChild(div);
    }
  }
}

// configuration objects for each `new GridEntry`
const gridContent = [
  // ****** sausages ****** \\
  {
    type: "category",
    cat: "sausages",
    text: `Such a versatile & in-expensive ingredient. I tend to use pork Cumberland or
    Lincolnshire, but please feel free to experiment with vegetarian or chicken
    sausages. With one exception, sausage & onion pie, I think that really needs
    pork sausage meat.`,
  },

  {
    type: "recipe",
    cat: "sausages",
    imgSrc: `./images/sausagecasserole/200/sausagecasserole.jpg`,
    caption: "sausage casserole",
    page: `sausagecasserole`,
  },

  {
    type: "recipe",
    cat: "sausages",
    imgSrc: "./images/sausagepasta/200/16-add-marjoram-leaves.jpg",
    caption: "sausage & penne pasta",
    page: `sausagepasta`,
  },

  //   use this to add an empty div
  {
    type: "blank",
  },

  {
    type: "recipe",
    cat: "sausages",
    imgSrc: "./images/sausagepepperpie/200/sausagepeppermashpie-01.jpg",
    caption: "sausage & pepper mash pie",
    page: `sausagepepperpie`,
  },

  {
    type: "recipe",
    cat: "sausages",
    imgSrc: "./images/sausageonionpie/200/pie-on-board-07.jpg",
    caption: "sausage & onion pie",
    page: `sausageonionpie`,
  },
  // ****** sausages END ****** \\
  // ****** chicken ****** \\
  {
    type: "category",
    cat: "chicken",
    text: `While contemplating cost, large packs of chicken thighs are excellent. Being time concious, if boneless chicken is required, I've bought it that way. If using chicken breast, cooking times will need to be reduced, so the chicken does not dry out while cooking`,
  },

  {
    type: "recipe",
    cat: "chicken",
    imgSrc: "./images/chickensoup/200/chickensoup.jpg",
    caption: "grandma's chicken soup",
    page: `chickensoup`,
  },

  {
    type: "recipe",
    cat: "chicken",
    imgSrc: "./images/chickenchillimex/200/chicken-chilli-cooking.jpg",
    caption: "chicken chilli mexican",
    page: `chickenchilimex`,
  },

  {
    type: "recipe",
    cat: "chicken",
    imgSrc: "./images/easychickencurry/200/finished-curry-in-pan.png",
    caption: "indian chicken curry",
    page: `easychickencurry`,
  },

  {
    type: "recipe",
    cat: "chicken",
    imgSrc: "./images/chickenmushroompasta/200/pasta-sauce-in-pan.jpg",
    caption: "chicken & mushroom pasta",
    page: `chickenmushroompasta`,
  },

  {
    type: "recipe",
    cat: "chicken",
    imgSrc: "./images/chickenlasagne/200/chicken-lasagne-01.jpg",
    caption: "chicken & mushroom lasgne",
    page: `chickenlasagne`,
  },

  // ****** chicken END ****** \\

  // ****** beef ****** \\
  {
    type: "category",
    cat: "beef",
    text: `Buying beef is more complicated as cheaper cuts require longer cooking times or need pressure cooking. Try my corned beef mash pie, beef & pasta sauce dishes or, my beef & spinach curry is a nice delicate dish if you fancy a little spice!`,
  },

  {
    type: "recipe",
    cat: "beef",
    imgSrc: "./images/cornedbeefmash/200/cornedbeef-mash-pie.jpg",
    caption: "corned beef mash pie",
    page: `cornedbeefmashpie`,
  },

  {
    type: "recipe",
    cat: "beef",
    imgSrc: "./images/beefspinachcurry/200/spinach-added-to-curry.jpg",
    caption: "beef & spinach curry",
    page: `beefspinachcurry`,
  },

  {
    type: "recipe",
    cat: "beef",
    imgSrc: "./images/beefporkpastasauce/200/pasta-sauce-marjoram.jpg",
    caption: "beef & pork pasta sauce",
    page: `beefporkpastasauce`,
  },

  {
    type: "recipe",
    cat: "beef",
    imgSrc: "./images/beefporkchilli/200/peppers-and-chilli.jpg",
    caption: "beef & pork mexican chilli",
    page: `beefporkchilli`,
  },

  {
    type: "recipe",
    cat: "beef",
    imgSrc: "./images/beefporkpastabake/200/pasta-bake-done.jpg",
    caption: "beef & pork pasta bake",
    page: `beefporkpastabake`,
  },
  // ****** beef END ****** \\

  // ****** pork ****** \\
  {
    type: "category",
    cat: "pork",
    text: `I tend to go for a shoulder cut, it has a lot more fat running through it, which keeps it moist, melt in your mouth tasty in any dish. Left over roast pork is particularly delicious as you have all those wonderful umami meatiness flavours baked right into the meat before you start.`,
  },

  {
    type: "recipe",
    cat: "pork",
    imgSrc: "./images/bellyporkdinner/200/belly-pork-plated.jpg",
    caption: "belly pork dinner",
    page: `bellyporkdinner`,
  },

  {
    type: "recipe",
    cat: "pork",
    imgSrc: "./images/porksupreme/200/pork-in-creamy-pepper-sauce.jpg",
    caption: "pork in creamy pepper sauce",
    page: `porksupreme`,
  },
  // ****** pork END ****** \\

  // ****** lamb ****** \\

  {
    type: "category",
    cat: "lamb",
    text: `Lamb  dishes, now we're talking..... From fragrant curries to warming stews, Sunday roasts to rich ragus. Lamb is a fabulous ingredient, higher in cost than other meats, but oh! so worth it every now and again!`,
  },

  {
    type: "blank",
  },

  {
    type: "recipe",
    cat: "lamb",
    imgSrc: "./images/lambmashpie/200/lamb-mash-pie-ready.jpg",
    caption: "lamb & mash pie",
    page: `lambmashpie`,
  },

  // ****** lamb END ****** \\

  // ****** vege ****** \\
  {
    type: "category",
    cat: "vege' bakes",
    text: `Vegetables! ...as you might have noticed, feature heavily in my recipies, hiding in amongst lots of meat. Here they are the star! You can try them on a "veg hater" and I wish you luck with that :¬) But, healthwise, we should eat more, it's a fact. Cooked well and treated with love, they are the star indeed`,
  },

  {
    type: "recipe",
    cat: "vege' bakes",
    imgSrc: "./images/caulicheese/200/cauli-cheese-ready-02.jpg",
    caption: "cauliflower cheese & beans bake",
    page: `caulicheese`,
  },

  {
    type: "recipe",
    cat: "vege' bakes",
    imgSrc: "./images/caulifrankcheese/200/meal-cooked-01.jpg",
    caption: "cauliflower cheese & frankfurter bake",
    page: `caulifrankcheese`,
  },

  { type: "blank" },
  { type: "blank" },

  {
    type: "recipe",
    cat: "vege' bakes",
    imgSrc: "./images/tomatomexicanrice/200/cooked-rice-in-pan.jpg",
    caption: "tomato mexican rice",
    page: `tomatomexicanrice`,
  },

  // ****** vege END ****** \\

  // ****** sauce ****** \\
  {
    type: "category",
    cat: "sauce",
    text: `A good sauce is what elevates a dish to the next level of wonderful and these sauces are used throughout my recipies. For now here's a couple to get us going, without a jar, sachet, chemical additive or flavouring in sight.`,
  },

  {
    type: "info",
    cat: "sauce",
    imgSrc: "./images/cheesesauce/shop-bought-ingredients.jpg",
    caption: "ingredient NOT included!",
    page: ``,
  },

  {
    type: "recipe",
    cat: "sauce",
    imgSrc: "./images/whitesauce/200/white-sauce.jpg",
    caption: "white sauce",
    page: `whitesauce`,
  },

  { type: "blank" },

  {
    type: "recipe",
    cat: "sauce",
    imgSrc: "./images/whitesauce/200/white-sauce.jpg",
    caption: "onion sauce",
    page: `onionsauce`,
  },

  {
    type: "recipe",
    cat: "sauce",
    imgSrc: "./images/cheesesauce/200/cheese-sauce-in-pan.jpg",
    caption: "cheese sauce",
    page: `cheesesauce`,
  },

  // ****** sauce END ****** \\

  // ****** puddings ****** \\
  {
    type: "category",
    cat: "puddings",
    text: `Num num num! Time to polish off that meal, just to make sure everyone's had enough to eat :¬P`,
  },

  {
    type: "recipe",
    cat: "puddings",
    imgSrc: "./images/pineapplepud/200/cake-cooked.jpg",
    caption: "pineapple pudding upside down",
    page: `pineapplepudding`,
  },

  {
    type: "recipe",
    cat: "puddings",
    imgSrc: "./images/pearalmondtart/200/pear-almond-tart-cooling.jpg",
    caption: "pear almond tart",
    page: `pearalmondtart`,
  },

  { type: "blank" },

  {
    type: "recipe",
    cat: "puddings",
    imgSrc: "./images/gingerbread/200/cake-finished.jpg",
    caption: "sticky gingerbread pud",
    page: `gingerbread`,
  },

  {
    type: "recipe",
    cat: "puddings",
    imgSrc: "./images/blackcherrypie/200/cherry-pie-cooked.jpg",
    caption: "black cherry lattice tart",
    page: `blackcherrypie`,
  },

  // ****** puddings END ****** \\
];

// loop through the `gridContent` object
// to make an entry for the recipe grid
gridContent.forEach(function (card) {
  const el = new GridEntry(card);
  el.render();

  if (el.cat === "sauce" && el.type === "recipe") {
    console.log(el);
  }
});
