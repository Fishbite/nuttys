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
      img.title = this.imgTitle;
      img.alt = this.imgAlt;
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
      img.title = this.imgTitle;
      img.alt = this.imgAlt;
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
    imgTitle: "sausage casserole",
    imgAlt: "sausage casserole",
    caption: "sausage casserole",
    page: `sausagecasserole`,
  },

  {
    type: "recipe",
    cat: "sausages",
    imgSrc: "./images/sausagepasta/200/16-add-marjoram-leaves.jpg",
    imgTitle: "sausage & penne pasta",
    imgAlt: "add marjoram leaves",
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
    imgTitle: "sausage pepper mash pie",
    imgAlt: "sausage peppermash pie",
    caption: "sausage & pepper mash pie",
    page: `sausagepepperpie`,
  },

  {
    type: "recipe",
    cat: "sausages",
    imgSrc: "./images/sausageonionpie/200/pie-on-board-07.jpg",
    imgTitle: "sausage & onion pie",
    imgAlt: "pie on board",
    caption: "sausage & onion pie",
    page: `sausageonionpie`,
  },
  // ****** sausages END ****** \\
  // ****** chicken ****** \\
  {
    type: "category",
    cat: "chicken",
    text: `While contemplating cost, large packs of chicken thighs are excellent. Being time concious, if boneless chicken is required, I've bought it that way. If using chicken breast, cooking times will need to be reduced, so the chicken does not dry out while cooking.`,
  },

  {
    type: "recipe",
    cat: "chicken",
    imgSrc: "./images/chickensoup/200/chickensoup.jpg",
    imgTitle: "grandma's chicken soup",
    imgAlt: "chickensoup",
    caption: "grandma's chicken soup",
    page: `chickensoup`,
  },

  {
    type: "recipe",
    cat: "chicken",
    imgSrc: "./images/chickenchillimex/200/chicken-chilli-cooking.jpg",
    imgTitle: "chicken chilli mexican",
    imgAlt: "chicken chilli cooking",
    caption: "chicken chilli mexican",
    page: `chickenchilimex`,
  },

  {
    type: "recipe",
    cat: "chicken",
    imgSrc: "./images/easychickencurry/200/finished-curry-in-pan.png",
    imgTitle: "easy chicken curry",
    imgAlt: "finished curry in pan",
    caption: "easy chicken curry",
    page: `easy-chicken-curry`,
  },

  {
    type: "recipe",
    cat: "chicken",
    imgSrc: "./images/chickenmushroompasta/200/pasta-sauce-in-pan.jpg",
    imgTitle: "chicken & mushroom pasta",
    imgAlt: "pasta sauce in pan",
    caption: "chicken & mushroom pasta",
    page: `chickenmushroompasta`,
  },

  {
    type: "recipe",
    cat: "chicken",
    imgSrc: "./images/chickenlasagne/200/chicken-lasagne-01.jpg",
    imgTitle: "chicken & mushroom lasagne",
    imgAlt: "chicken lasagne",
    caption: "chicken & mushroom lasagne",
    page: `chickenlasagne`,
  },

  {
    type: "recipe",
    cat: "chicken",
    imgSrc:
      "./images/sweet-sour-roast-chicken/200/spring-onion-added-to-sauce.jpg",
    imgTitle: "sweet & sour chicken",
    imgAlt: "spring onion added to sauce",
    caption: "sweet & sour roast chicken",
    page: `sweet-and-sour-roast-chicken`,
  },

  {
    type: "recipe",
    cat: "chicken",
    imgSrc: "./images/chickenvindaloo/650x366/vindaloo-simmering.webp",
    imgTitle: "indian chicken vindaloo",
    imgAlt: "vindaloo simmering",
    caption: "indian chicken vindaloo",
    page: `chickenvindaloo`,
  },

  {
    type: "recipe",
    cat: "chicken",
    imgSrc: "./images/chickenmushroompie/200/chicken-pie-cooked-01.jpg",
    imgTitle: "chicken & mushroom pie",
    imgAlt: "chicken pie cooked",
    caption: "chicken & mushroom pie",
    page: `chickenmushroompie`,
  },

  { type: "blank" },
  { type: "blank" },

  {
    type: "recipe",
    cat: "chicken",
    imgSrc: "/images/chicken-and-gammon-pie/200/pie-cooked-trimmed-2.webp",
    imgTitle: "chicken & gammon pie",
    imgAlt: "pie cooked trimmed",
    caption: "chicken & gammon pie",
    page: `chicken-and-gammon-pie`,
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
    imgTitle: "corned beef mash pie",
    imgAlt: "",
    caption: "corned beef mash pie",
    page: `cornedbeefmashpie`,
  },

  {
    type: "recipe",
    cat: "beef",
    imgSrc: "./images/beefspinachcurry/200/spinach-added-to-curry.jpg",
    imgTitle: "beef & spinach curry",
    imgAlt: "spinach added to curry",
    caption: "beef & spinach curry",
    page: `beefspinachcurry`,
  },

  {
    type: "recipe",
    cat: "beef",
    imgSrc: "./images/beefporkpastasauce/200/pasta-sauce-marjoram.jpg",
    imgTitle: "beef & pork pasta sauce",
    imgAlt: "pasta sauce marjoram",
    caption: "beef & pork pasta sauce",
    page: `beefporkpastasauce`,
  },

  {
    type: "recipe",
    cat: "beef",
    imgSrc: "./images/beefporkchilli/200/peppers-and-chilli.jpg",
    imgTitle: "beef & pork mexican chilli",
    imgAlt: "peppers and chilli",
    caption: "beef & pork mexican chilli",
    page: `beefporkchilli`,
  },

  {
    type: "recipe",
    cat: "beef",
    imgSrc: "./images/beefporkpastabake/200/pasta-bake-done.jpg",
    imgTitle: "beef & pork pasta bake",
    imgAlt: "pasta bake done",
    caption: "beef & pork pasta bake",
    page: `beefporkpastabake`,
  },

  { type: "blank" },

  {
    type: "recipe",
    cat: "beef",
    imgSrc: "./images/beef-pork-madras/200/beef-and-pork-madras.webp",
    imgTitle: "beef and pork madras",
    imgAlt: "beef pork madras in pan",
    caption: "beef & pork madras",
    page: `beef-pork-madras`,
  },

  {
    type: "recipe",
    cat: "beef",
    imgSrc: "./images/beefy-meatballs/200/meatballs-finished.webp",
    imgTitle: "beefy meatballs in onion gravy",
    imgAlt: "meatballs finished",
    caption: "beefy meatballs in onion gravy",
    page: `beefy-meatballs-onion-gravy`,
  },
  // ****** beef END ****** \\

  // ****** pork ****** \\
  {
    type: "category",
    cat: "pork",
    text: `I tend to go for a shoulder cut, it has more fat, which keeps it moist, melt in your mouth tasty in any dish. Left over roast pork is particularly delicious as you have all those wonderful umami meatiness flavours baked right into the meat before you start. I'll put my gammon recipes here too until a later date.`,
  },

  {
    type: "recipe",
    cat: "pork",
    imgSrc: "./images/porksupreme/200/pork-in-creamy-pepper-sauce.jpg",
    imgTitle: "pork in creamy pepper sauce",
    imgAlt: "pork in creamy pepper sauce",
    caption: "pork in creamy pepper sauce",
    page: `porksupreme`,
  },

  {
    type: "recipe",
    cat: "pork",
    imgSrc:
      "./images/sweet-sour-pork-fresh/200/sweet-and-sour-pork-cooked.webp",
    imgTitle: "sweet and sour pork",
    imgAlt: "sweet and sour pork cooked",
    caption: "sweet and sour pork",
    page: `sweet-and-sour-pork`,
  },

  {
    type: "recipe",
    cat: "pork",
    imgSrc: "./images/pork-vindaloo-fresh/200/vindaloo-cooked-1.webp",
    imgTitle: "pork vindaloo made with fresh pork",
    imgAlt: "pork vindaloo cooked",
    caption: "fresh pork vindaloo",
    page: `pork-vindaloo`,
  },

  {
    type: "recipe",
    cat: "pork",
    imgSrc: "./images/porkvindaloo/200/pork-vindaloo-simmering.webp",
    imgTitle: "roast pork vindaloo",
    imgAlt: "roast pork vindaloo simmering",
    caption: "roast pork vindaloo",
    page: `roastporkvindaloo`,
  },

  {
    type: "recipe",
    cat: "pork",
    imgSrc: "../images/pork-madras/200/pork-madras-curry-finished.webp",
    imgTitle: "pork madras curry",
    imgAlt: "pork madras curry",
    caption: "pork madras curry",
    page: `pork-madras`,
  },

  { type: "blank" },

  {
    type: "recipe",
    cat: "pork",
    imgSrc:
      "./images/gammon-joint-and-mustard-sauce/650x366/gammon-slices-on-plate.webp",
    imgTitle: "gammon slices on plate",
    imgAlt: "gammon slices on plate",
    caption: "gammon joint & mustard sauce",
    page: `gammon-joint-with-mustard-sauce`,
  },

  {
    type: "recipe",
    cat: "pork",
    imgSrc: "./images/bellyporkdinner/200/dinner-plated.webp",
    imgTitle: "belly pork dinner",
    imgAlt: "dinner plated",
    caption: "belly pork dinner",
    page: `bellyporkdinner`,
  },

  // ****** pork END ****** \\

  // ****** lamb ****** \\

  {
    type: "category",
    cat: "lamb",
    text: `Lamb  dishes, now we're talking..... From fragrant curries to warming stews, Sunday roasts to rich ragus. Lamb is a fabulous ingredient, higher in cost than other meats, but oh! so worth it every now and again!`,
  },

  {
    type: "recipe",
    cat: "lamb",
    imgSrc: "./images/lambpeasmintcurry/200/curry-in-pan.webp",
    imgTitle: "lamb peas & mint curry",
    imgAlt: "curry in pan",
    caption: "lamb peas & mint curry",
    page: `lamb-peas-mint-curry`,
  },

  {
    type: "recipe",
    cat: "lamb",
    imgSrc: "./images/lambmashpie/200/lamb-mash-pie-ready.webp",
    imgTitle: "lamb & mash pie",
    imgAlt: "lamb mash-pie ready",
    caption: "lamb & mash pie",
    page: `lambmashpie`,
  },

  // ****** lamb END ****** \\

  // ****** vege ****** \\
  {
    type: "category",
    cat: "vege' bakes",
    text: `Vegetables! ...as you might have noticed, feature heavily in my recipies, hiding in amongst lots of meat. Here they are the star! You can try them on a "veg hater" and I wish you luck with that :¬) But, healthwise, we should eat more, it's a fact. Cooked well and treated with love, they are the star indeed.`,
  },

  {
    type: "recipe",
    cat: "vege' bakes",
    imgSrc: "./images/caulicheese/200/cauli-cheese-ready-02.jpg",
    imgTitle: "cauliflower cheese & beans bake",
    imgAlt: "cauli cheese ready",
    caption: "cauliflower cheese & beans bake",
    page: `caulicheese`,
  },

  {
    type: "recipe",
    cat: "vege' bakes",
    imgSrc: "./images/caulifrankcheese/200/meal-cooked-01.jpg",
    imgTitle: "cauliflower cheese & frankfurter bake",
    imgAlt: "meal cooked",
    caption: "cauliflower cheese & frankfurter bake",
    page: `caulifrankcheese`,
  },

  { type: "blank" },
  { type: "blank" },

  {
    type: "recipe",
    cat: "vege' bakes",
    imgSrc:
      "./images/caulicheesesmokedhaddock/200/cauli-cheese-smoked-haddock-baked.webp",
    imgTitle: "cauliflower cheese smoked haddock bake",
    imgAlt: "cauli cheese smoked hadock baked",
    caption: "cauli cheese & smoked haddock",
    page: `cauli-cheese-smoked-haddock-bake`,
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
    imgTitle: "ingredients NOT included",
    imgAlt: "shop bought ingredients",
    caption: "ingredients NOT included!",
    page: ``,
  },

  {
    type: "recipe",
    cat: "sauce",
    imgSrc: "./images/whitesauce/200/white-sauce.jpg",
    imgTitle: "white sauce",
    imgAlt: "white sauce",
    caption: "white sauce",
    page: `whitesauce`,
  },

  { type: "blank" },

  {
    type: "recipe",
    cat: "sauce",
    imgSrc: "./images/onionsauce/200/onion-sauce-jug-01.webp",
    imgTitle: "onion sauce",
    imgAlt: "onion sauce jug",
    caption: "onion sauce",
    page: `onionsauce`,
  },

  {
    type: "recipe",
    cat: "sauce",
    imgSrc: "./images/cheesesauce/200/cheese-sauce-in-pan.jpg",
    imgTitle: "cheese sauce",
    imgAlt: "cheese sauce in pan",
    caption: "cheese sauce",
    page: `cheesesauce`,
  },

  // ****** sauce END ****** \\

  // ****** accompaniments START ****** \\
  {
    type: "category",
    cat: "accompaniments",
    text: `What do I serve with the main star of my dish? Indian dishes cry out for flat breads, Chinese dishes needle for noodles, sausage and - has to be mash! So, every time I make a dish that really benefits from a specific side - I'll try and put it in here. Do shout out if you would like me to put something here.`,
  },

  {
    type: "recipe",
    cat: "accompaniments",
    imgSrc: "./images/tomatomexicanrice/200/cooked-rice-in-pan.jpg",
    imgTitle: "tomato mexican rice",
    imgAlt: "cooked rice in pan",
    caption: "tomato mexican rice",
    page: `tomatomexicanrice`,
  },

  {
    type: "recipe",
    cat: "accompaniments",
    imgSrc: "./images/chapati/200/chapati-cooking-01.webp",
    imgTitle: "chapati flat bread",
    imgAlt: "chapati cooking",
    caption: "chapati flat bread",
    page: `chapati`,
  },

  { type: "blank" },

  {
    type: "recipe",
    cat: "accompaniments",
    imgSrc: "./images/egg-fried-rice/200/egg-fried-rice-cooked.webp",
    imgTitle: "egg fried rice",
    imgAlt: "egg fried rice",
    caption: "egg fried rice",
    page: `egg-fried-rice`,
  },

  {
    type: "recipe",
    cat: "accompaniments",
    imgSrc:
      "./images/chinese-noodles-with-beansprouts/200/stirfry-noodles.webp",
    imgTitle: "chinese noodles with beansprouts",
    imgAlt: "stirfry noodles",
    caption: "noodles with beansprouts",
    page: `chinese-noodles-with-beansprouts`,
  },

  // ****** accompaniments END ****** \\

  // ****** puddings START ****** \\
  {
    type: "category",
    cat: "puddings",
    text: `Num num num! Time to polish off that meal, just to make sure everyone's had enough to eat :¬P`,
  },

  {
    type: "recipe",
    cat: "puddings",
    imgSrc: "./images/pineapplepud/200/cake-cooked.jpg",
    imgTitle: "pineapple pudding upside down",
    imgAlt: "cake cooked",
    caption: "pineapple pudding upside down",
    page: `pineapplepudding`,
  },

  {
    type: "recipe",
    cat: "puddings",
    imgSrc: "./images/pearalmondtart/200/pear-almond-tart-cooling.jpg",
    imgTitle: "pear almond tart",
    imgAlt: "pear almond tart cooling",
    caption: "pear almond tart",
    page: `pearalmondtart`,
  },

  {
    type: "recipe",
    cat: "puddings",
    imgSrc:
      "./images/appleblackberrycrumble/650x366/apple-blackberry-crumble-01.webp",
    imgTitle: "apple & blackberry crumble",
    imgAlt: "apple blackberry crumble",
    caption: "apple & blackberry crumble",
    page: `appleblackberrycrumble`,
  },

  {
    type: "recipe",
    cat: "puddings",
    imgSrc: "./images/gingerbread/200/cake-finished.jpg",
    imgTitle: "sticky gingerbread pud",
    imgAlt: "cake-finished",
    caption: "sticky gingerbread pud",
    page: `gingerbread`,
  },

  {
    type: "recipe",
    cat: "puddings",
    imgSrc: "./images/blackcherrypie/200/cherry-pie-cooked.jpg",
    imgTitle: "black cherry lattice tart",
    imgAlt: "cherry pie cooked",
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
