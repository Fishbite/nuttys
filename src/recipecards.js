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

  {
    type: "recipe",
    cat: "sausages",
    imgSrc:
      "images/sausage-pasta-sauce/200/sausage-pasta-sauce-and-fusilli.webp",
    imgTitle: "sausage pasta sauce topped with cheese",
    imgAlt: "sausage pasta sauce and fusilli",
    caption: "sausage pasta sauce",
    page: `sausage-pasta-sauce`,
  },

  {
    type: "recipe",
    cat: "sausages",
    imgSrc: "./images/sausagepepperpie/200/sausagepeppermashpie-01.webp",
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
    imgSrc:
      "/images/chicken-thighs-in-spicey-hot-sauce/200/chicken-thighs-in-spicy-hot-sauce.webp",
    imgTitle: "chicken thighs in spicy hot sauce",
    imgAlt: "lemon garlic ginger added",
    caption: "chicken thighs in spicy hot sauce",
    page: `chicken-thighs-in-spicy-hot-sauce`,
  },

  {
    type: "recipe",
    cat: "chicken",
    imgSrc:
      "/images/karahi-chicken-curry/650x366/corriander-added-to-karahi-chicken-curry.webp",
    imgTitle: "corriander added to finish the karahi chicken curry",
    imgAlt: "corriander added to karahi chicken curry",
    caption: "karahi chicken curry",
    page: `karahi-chicken-curry`,
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

  {
    type: "recipe",
    cat: "chicken",
    imgSrc: "/images/chicken-and-gammon-pie/200/pie-cooked-trimmed-2.webp",
    imgTitle: "chicken & gammon pie",
    imgAlt: "pie cooked trimmed",
    caption: "chicken & gammon pie",
    page: `chicken-and-gammon-pie`,
  },

  {
    type: "recipe",
    cat: "chicken",
    imgSrc: "/images/jerk-chicken/200/jerk-chicken-plated.webp",
    imgTitle: "jerk chicken stacked on a plate ready to serve",
    imgAlt: "jerk chicken plated",
    caption: "jerk chicken",
    page: `jerk-chicken`,
  },

  {
    type: "recipe",
    cat: "chicken",
    imgSrc:
      "/images/spicy-masala-chicken/200/spicy-masala-chicken-tarka-dhal-naan-plated.webp",
    imgTitle: "spicy masala chicken served with tarka dhal and naan bread",
    imgAlt: "spicy  masala chicken tarka dhal naan plated",
    caption: "spicy masala chicken",
    page: `spicy-masala-chicken`,
  },

  {
    type: "recipe",
    cat: "chicken",
    imgSrc: "/images/balti-butter-chicken/200/balti-butter-chicken-cooked.webp",
    imgTitle: "balti butter chicken in serving dish",
    imgAlt: "balti butter chicken cooked",
    caption: "balti butter chicken",
    page: `balti-butter-chicken`,
  },

  {
    type: "recipe",
    cat: "chicken",
    imgSrc:
      "/images/jerked-chicken-curry/200/jerked-chicken-and-macaroni-pie-plated-03.webp",
    imgTitle: "jerked chicken curry served with blue cheese macaroni pie",
    imgAlt: "jerked chicken and macaroni pie plated 03",
    caption: "jerked chicken curry",
    page: `jerked-chicken-curry`,
  },

  {
    type: "recipe",
    cat: "chicken",
    imgSrc:
      "/images/chipotle-chicken-burrito/200/chipotle-chicken-chilli-burrito.webp",
    imgTitle: "chipotle chicken burrito served with cheese and lettuce",
    imgAlt: "chipotle chicken chilli burrito",
    caption: "chipotle chicken burrito",
    page: `chipotle-chicken-burrito`,
  },

  {
    type: "recipe",
    cat: "chicken",
    imgSrc:
      "/images/tandoori-chicken/200/cooked-tandori-chicken-on-plate-02.webp",
    imgTitle: "tandoori chicken on plate ready to serve",
    imgAlt: "cooked tandoori chicken on plate 02",
    caption: "classic tandoori chicken",
    page: `tandoori-chicken`,
  },

  {
    type: "recipe",
    cat: "chicken",
    imgSrc: "/images/chicken-with-mango/200/chicken-with-mango-plated-02.webp",
    imgTitle: "chicken with mango plated with plain basmati rice",
    imgAlt: "chicken with mango plated",
    caption: "chicken with mango",
    page: `chicken-with-mango`,
  },

  {
    type: "recipe",
    cat: "chicken",
    imgSrc:
      "/images/chicken-in-cashew-nut-sauce/200/chicken-in-cashew-nut-sauce-plated.webp",
    imgTitle: "chicken in cashew nut sauce with basmati rice",
    imgAlt: "chicken in cashew nut sauce plated",
    caption: "chicken in cashew nut sauce",
    page: `chicken-in-cashew-nut-sauce`,
  },

  {
    type: "recipe",
    cat: "chicken",
    imgSrc:
      "/images/chicken-tandoori-grill/200/chicken-tandoori-grill-plated-01.webp",
    imgTitle: "chicken tandoori grill, salad, rice salad & raita",
    imgAlt: "chicken tandoori grill plated 01",
    caption: "chicken tandoori grill",
    page: `chicken-tandoori-grill`,
  },

  { type: "blank" },
  { type: "blank" },

  {
    type: "recipe",
    cat: "chicken",
    imgSrc:
      "/images/khara-masala-balti-chicken/200/khara-masala-balti-chicken-plated-03.webp",
    imgTitle: "khara masala balti chicken with salad & naan",
    imgAlt: "khara masala balti chicken plated",
    caption: "khara masala balti chicken",
    page: `khara-masala-balti-chicken`,
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

  {
    type: "recipe",
    cat: "beef",
    imgSrc: "./images/cottage-pie/200/cottage-pie-cooked-2.jpg",
    imgTitle: "cottage pie in square serving dish",
    imgAlt: "cottage pie cooked 1",
    caption: "cottage pie",
    page: `cottage-pie`,
  },

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

  {
    type: "recipe",
    cat: "beef",
    imgSrc: "/images/braised-steak/200/braised-steak-mash-and-broccoli.webp",
    imgTitle: "mum's braised steak & mash",
    imgAlt: "braised steak mash and broccoli",
    caption: "mum's braised steak & mash",
    page: `mums-braised-steak`,
  },

  {
    type: "recipe",
    cat: "beef",
    imgSrc:
      "./images/beef-curry-with-green-beans/200/beef-curry-with-green-beans-1.jpg",
    imgTitle: "beef curry with green beans in a pan",
    imgAlt: "beef curry with green beans 1",
    caption: "beef curry with green beans",
    page: `beef-curry-with-green-beans`,
  },

  {
    type: "recipe",
    cat: "beef",
    imgSrc:
      "./images/beef-mushroom-suet-pie/200/pie-and-broccoli-plated-2.webp",
    imgTitle: "beef and mushroom suet pastry pie & boccoli",
    imgAlt: "pie and broccoli plated 2",
    caption: "beef and mushroom suet pastry pie",
    page: `beef-and-mushroom-suet-pastry-pie`,
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
    imgSrc: "/images/pork-fried-rice/200/pork-fried-rice.webp",
    imgTitle: "pork fried rice",
    imgAlt: "pork fried rice",
    caption: "pork fried rice",
    page: `pork-fried-rice`,
  },

  {
    type: "recipe",
    cat: "pork",
    imgSrc: "/images/sweet-sour-pork-fresh/200/sweet-and-sour-pork-cooked.webp",
    imgTitle: "sweet and sour pork",
    imgAlt: "sweet and sour pork cooked",
    caption: "sweet and sour pork",
    page: `sweet-and-sour-pork`,
  },

  {
    type: "recipe",
    cat: "pork",
    imgSrc: "/images/pork-vindaloo-fresh/200/vindaloo-cooked-1.webp",
    imgTitle: "pork vindaloo made with fresh pork",
    imgAlt: "pork vindaloo cooked",
    caption: "fresh pork vindaloo",
    page: `pork-vindaloo`,
  },

  {
    type: "recipe",
    cat: "pork",
    imgSrc: "/images/porkvindaloo/200/pork-vindaloo-simmering.webp",
    imgTitle: "roast pork vindaloo",
    imgAlt: "roast pork vindaloo simmering",
    caption: "roast pork vindaloo",
    page: `roastporkvindaloo`,
  },

  {
    type: "recipe",
    cat: "pork",
    imgSrc:
      "/images/pork-blackbean-peppers/650x366/pork-and-peppers-in-blackbean-sauce.webp",
    imgTitle: "pork and peppers in black bean sauce",
    imgAlt: "pork and peppers in black bean sauce",
    caption: "pork and peppers in black bean sauce",
    page: `pork-blackbean-sauce-and-peppers`,
  },

  {
    type: "recipe",
    cat: "pork",
    imgSrc: "/images/pork-madras/200/pork-madras-curry-finished.webp",
    imgTitle: "pork madras curry",
    imgAlt: "pork madras curry",
    caption: "pork madras curry",
    page: `pork-madras`,
  },

  {
    type: "recipe",
    cat: "pork",
    imgSrc:
      "/images/gammon-joint-and-mustard-sauce/200/gammon-dinner-plated-1.webp",
    imgTitle: "gammmon with mustard sauce, creamy mash & roast cauliflower",
    imgAlt: "gammon dinner plated 1",
    caption: "gammon joint & mustard sauce",
    page: `gammon-joint-with-mustard-sauce`,
  },

  {
    type: "recipe",
    cat: "pork",
    imgSrc: "/images/bellyporkdinner/200/dinner-plated.webp",
    imgTitle: "belly pork dinner",
    imgAlt: "dinner plated",
    caption: "belly pork dinner",
    page: `bellyporkdinner`,
  },

  {
    type: "recipe",
    cat: "pork",
    imgSrc: "/images/pork-chilli/200/pork-chilli-served.webp",
    imgTitle: "pork chilli served with a pitta bread",
    imgAlt: "pork chilli served",
    caption: "pork chilli",
    page: `pork-chilli`,
  },

  {
    type: "recipe",
    cat: "pork",
    imgSrc: "/images/roast-pork-stroganoff/200/pork-stroganoff-plated-3.jpg",
    imgTitle: "roast pork stroganoff plated with sweet root mash & brocolli",
    imgAlt: "pork stroganoff plated 3",
    caption: "roast pork stroganoff",
    page: `roast-pork-stroganoff`,
  },

  {
    type: "recipe",
    cat: "pork",
    imgSrc: "/images/porksupreme/200/pork-in-creamy-pepper-sauce.jpg",
    imgTitle: "pork in creamy pepper sauce",
    imgAlt: "pork in creamy pepper sauce",
    caption: "pork in creamy pepper sauce",
    page: `porksupreme`,
  },

  { type: "blank" },

  {
    type: "recipe",
    cat: "pork",
    imgSrc:
      "/images/peri-peri-pork-steaks/200/peri-peri-pork-steaks-plated.webp",
    imgTitle:
      "peri peri pork steaks served with side salad & jacket potato with cheese",
    imgAlt: "pork steaks plated",
    caption: "peri peri pork steaks",
    page: `peri-peri-pork-steaks`,
  },

  {
    type: "recipe",
    cat: "pork",
    imgSrc: "/images/jerked-pork-curry/200/jerked-pork-rice-and-peas-01.webp",
    imgTitle: "jerked pork curry rice and peas",
    imgAlt: "jerked pork rice and peas 01",
    caption: "jerked pork curry",
    page: `jerked-pork-curry`,
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
    imgSrc: "/images/lambpeasmintcurry/200/curry-in-pan.webp",
    imgTitle: "lamb peas & mint curry",
    imgAlt: "curry in pan",
    caption: "lamb peas & mint curry",
    page: `lamb-peas-mint-curry`,
  },

  {
    type: "recipe",
    cat: "lamb",
    imgSrc: "/images/lambmashpie/200/lamb-mash-pie-ready.webp",
    imgTitle: "lamb & mash pie",
    imgAlt: "lamb mash-pie ready",
    caption: "lamb & mash pie",
    page: `lambmashpie`,
  },

  {
    type: "recipe",
    cat: "lamb",
    imgSrc: "/images/lamb-kofta-curry/200/lamb-kofta-curry-and-rice.webp",
    imgTitle: "lamb kofta curry served with basmati rice",
    imgAlt: "lamb kofta curry and rice",
    caption: "lamb kofta curry",
    page: `lamb-kofta-curry`,
  },

  {
    type: "recipe",
    cat: "lamb",
    imgSrc: "/images/dodgy-kebab/200/kebab-closed-with-salad-2.webp",
    imgTitle: "Dodgy Kebab! with salad on the side",
    imgAlt: "kebab closed with salad",
    caption: "my dodgy kebab",
    page: `dodgy-kebab`,
  },

  {
    type: "recipe",
    cat: "lamb",
    imgSrc: "/images/lamb-curry-with-spinach/650x366/garam-masala-added-1.webp",
    imgTitle: "lamb curry with spinach",
    imgAlt: "garam masala added",
    caption: "lamb curry with spinach",
    page: `lamb-curry-with-spinach`,
  },

  // ****** lamb END ****** \\

  // ****** vege ****** \\
  {
    type: "category",
    cat: "fish & veg",
    text: `Vegetables! ...as you might have noticed, feature heavily in my recipies, hiding in amongst lots of meat. Here they are the star! You can try them on a "veg hater" and I wish you luck with that :¬) But, healthwise, we should eat more, it's a fact. And, as a replacement for meat, you can't go wrong with a bit of fish!`,
  },

  {
    type: "recipe",
    cat: "fish & veg",
    imgSrc: "/images/caulicheese/200/cauli-cheese-ready-02.jpg",
    imgTitle: "cauliflower cheese & beans bake",
    imgAlt: "cauli cheese ready",
    caption: "cauliflower cheese & beans bake",
    page: `caulicheese`,
  },

  {
    type: "recipe",
    cat: "fish & veg",
    imgSrc: "/images/caulifrankcheese/200/meal-cooked-01.jpg",
    imgTitle: "cauliflower cheese & frankfurter bake",
    imgAlt: "meal cooked",
    caption: "cauliflower cheese & frankfurter bake",
    page: `caulifrankcheese`,
  },

  {
    type: "recipe",
    cat: "fish & veg",
    imgSrc:
      "/images/vegetarian-chilli/200/vegetarian-chilli-and-buttered-bread-03.webp",
    imgTitle: "vegetarian-chilli and buttered bread",
    imgAlt: "vegetarian-chilli and buttered bread",
    caption: "vegetarian-chilli",
    page: `vegetarian-chilli`,
  },

  {
    type: "recipe",
    cat: "fish & veg",
    imgSrc: "/images/macaroni-pie/200/macaroni-pie-baked.webp",
    imgTitle: "macaroni pie baked in the oven",
    imgAlt: "macaroni pie baked",
    caption: "baked macaroni pie",
    page: `macaroni-pie`,
  },

  {
    type: "recipe",
    cat: "fish & veg",
    imgSrc:
      "/images/caulicheesesmokedhaddock/200/cauli-cheese-smoked-haddock-baked-02.webp",
    imgTitle: "cauliflower cheese smoked haddock bake",
    imgAlt: "cauli cheese smoked hadock baked 01",
    caption: "cauli cheese & smoked haddock",
    page: `cauli-cheese-smoked-haddock-bake`,
  },

  {
    type: "recipe",
    cat: "fish & veg",
    imgSrc: "/images/aloo-gobi/650x366/aloo-gobi-plated.webp",
    imgTitle: "aloo gobi on a plate",
    imgAlt: "aloo gobi plated",
    caption: "aloo gobi",
    page: `aloo-gobi`,
  },

  {
    type: "recipe",
    cat: "fish & veg",
    imgSrc:
      "/images/smoked-haddock-in-cheese-sauce/200/smoked-haddock-in-cheese-sauce-plated.webp",
    imgTitle:
      "smoked haddock in cheese sauce served with mashed potatoes and warm buttered baguette",
    imgAlt: "smoked haddock in cheese sauce plated",
    caption: "smoked haddock in cheese sauce",
    page: `smoked-haddock-in-cheese-sauce`,
  },

  {
    type: "recipe",
    cat: "fish & veg",
    imgSrc: "/images/fish-pie/200/fish-pie-baked-02.webp",
    imgTitle: "mum's fish pie",
    imgAlt: "fish pie baked 02",
    caption: "mum's fish pie",
    page: `fish-pie`,
  },

  {
    type: "recipe",
    cat: "fish & veg",
    imgSrc:
      "/images/blue-cheese-macaroni-pie/200/blue-cheese-macaroni-pie-baked.webp",
    imgTitle: "cauliflower curry finished cooking in a pan",
    imgAlt: "blue cheese macaroni pie baked",
    caption: "blue cheese macaroni pie",
    page: `blue-cheese-macaroni-pie`,
  },

  {
    type: "recipe",
    cat: "fish & veg",
    imgSrc: "/images/cauli-curry/200/cauliflower-curry-in-a-pan-01.webp",
    imgTitle: "cauliflower curry finished cooking in a pan",
    imgAlt: "cauliflower curry in a pan",
    caption: "cauliflower curry",
    page: `cauliflower-curry`,
  },

  {
    type: "recipe",
    cat: "fish & veg",
    imgSrc: "/images/chorizo-cod/200/chorizo-cod-stew-plated-04.webp",
    imgTitle:
      "baked chorizo cod stew served with finely shredded iceberg lettuce",
    imgAlt: "chorizo cod stew plated 04",
    caption: "chorizo cod stew",
    page: `chorizo-cod-stew`,
  },

  // ****** vege END ****** \\

  // ****** sauce START ****** \\
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

  {
    type: "recipe",
    cat: "sauce",
    imgSrc: "/images/parsley-sauce/200/parsley-sauce.webp",
    imgTitle: "probably the best home-made parsley in the world!",
    imgAlt: "parsley sauce",
    caption: "parsley sauce",
    page: `parsley-sauce`,
  },

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

  {
    type: "recipe",
    cat: "accompaniments",
    imgSrc: "/images/basmati-rice/200/basmati-rice-2.webp",
    imgTitle: "cooked basmati rice in a bowl",
    imgAlt: "basmati rice 2",
    caption: "basmati rice",
    page: `basmati-rice`,
  },

  {
    type: "recipe",
    cat: "accompaniments",
    imgSrc: "/images/dhal-fried-spices/200/dhal-with-fried-spices-in-dish.webp",
    imgTitle: "dhal with fried spices served in a dish",
    imgAlt: "dhal with fried spices in dish",
    caption: "dhal with fried spices",
    page: `dhal-with-fried-spices`,
  },

  {
    type: "recipe",
    cat: "accompaniments",
    imgSrc: "/images/tarka-dhal/200/tarka-dhal-finished.webp",
    imgTitle: "tarka dhal",
    imgAlt: "tarka-dhal",
    caption: "tarka dhal",
    page: `tarka-dhal`,
  },

  {
    type: "recipe",
    cat: "accompaniments",
    imgSrc: "/images/mashed-roots/650x366/swede-carrot-potato-mash-1.webp",
    imgTitle: "mashed roots side dish",
    imgAlt: "swede carrot potato mash 1",
    caption: "mashed roots",
    page: `mashed-roots`,
  },

  { type: "blank" },
  { type: "blank" },

  {
    type: "recipe",
    cat: "accompaniments",
    imgSrc: "/images/rice-and-peas/200/rice-and-peas-in-bowl-01.webp",
    imgTitle: "jamaican rice & Peas",
    imgAlt: "jamaican rice and Peas in a bowl",
    caption: "jamaican rice & peas",
    page: `jamaican-rice-and-peas`,
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

  {
    type: "recipe",
    cat: "puddings",
    imgSrc: "/images/chocolate-cake/200/chocolate-cake-01.webp",
    imgTitle:
      "chocolate cake with butter cream and fruit & nut chocolate bar topping",
    imgAlt: "chocolate cake",
    caption: "chocolate cake",
    page: `chocolate-cake`,
  },

  {
    type: "recipe",
    cat: "puddings",
    imgSrc: "./images/victoria-sponge-cake/200/victoria-sponge-slice.webp",
    imgTitle: "a slice of victoria sponge cake",
    imgAlt: "victoria sponge slice",
    caption: "victoria sponge cake",
    page: `victoria-sponge-cake`,
  },

  {
    type: "recipe",
    cat: "puddings",
    imgSrc: "/images/steamed-sponge-pudding/200/steamed-pudding-sliced.webp",
    imgTitle: "sliced steamed sponge pudding with jam topping",
    imgAlt: "steamed pudding sliced",
    caption: "steamed sponge pudding",
    page: `steamed-sponge-pudding`,
  },

  {
    type: "recipe",
    cat: "puddings",
    imgSrc:
      "/images/damson-and-soured-cream-tart/200/damson-and-soured-cream-tart-plated-06.webp",
    imgTitle: "a slice of damson and soured ceam tart on a plate",
    imgAlt: "damson & soured cream tart plated",
    caption: "damson & soured cream tart",
    page: `damson-and-soured-cream-tart`,
  },

  {
    type: "recipe",
    cat: "puddings",
    imgSrc:
      "/images/pear-coconut-blackberry-cake/200/pear-coconut-blackberry-cake-sliced-01.webp",
    imgTitle: "Pear, Coconut & Blackberry Cake Sliced",
    imgAlt: "pear coconut blackberry cake sliced 01",
    caption: "Pear, Coconut & Blackberry Cake",
    page: `pear-coconut-blackberry-cake`,
  },

  // ****** puddings END ****** \\
];

// loop through the `gridContent` object
// to make an entry for the recipe grid
gridContent.forEach(function (card) {
  const el = new GridEntry(card);
  el.render();
});
