CREATE TABLE IF NOT EXISTS recipe_cards (
    id INT AUTO_INCREMENT PRIMARY KEY,
    category VARCHAR(50) NOT NULL,
    image VARCHAR(255) NOT NULL,
    caption VARCHAR(255) NOT NULL,
    page VARCHAR(100) NOT NULL,
    imgTitle VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    UNIQUE KEY unique_recipe (category, page),
    KEY idx_description (description)
);
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('sausages & bacon', '/images/sausagecasserole/200/sausagecasserole.jpg', 'sausage casserole', 'sausagecasserole', 'sausage casserole', 'hearty sausage casserole, onions, carrots, slow-cooked, comfort food, rich gravy, easy dinner, British classic')
             ON DUPLICATE KEY UPDATE 
             image='/images/sausagecasserole/200/sausagecasserole.jpg', caption='sausage casserole', imgTitle='sausage casserole', description='hearty sausage casserole, onions, carrots, slow-cooked, comfort food, rich gravy, easy dinner, British classic';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('sausages & bacon', '/images/sausagepasta/200/16-add-marjoram-leaves.jpg', 'sausage & penne pasta', 'sausagepasta', 'sausage & penne pasta', 'quick sausage pasta, tomato sauce, penne, peppers, midweek meal, comfort food, easy recipe, one-pan dinner')
             ON DUPLICATE KEY UPDATE 
             image='/images/sausagepasta/200/16-add-marjoram-leaves.jpg', caption='sausage & penne pasta', imgTitle='sausage & penne pasta', description='quick sausage pasta, tomato sauce, penne, peppers, midweek meal, comfort food, easy recipe, one-pan dinner';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('sausages & bacon', '/images/sausage-pasta-sauce/200/sausage-pasta-sauce-and-fusilli.webp', 'sausage pasta sauce', 'sausage-pasta-sauce', 'sausage pasta sauce topped with cheese', 'chunky pasta sauce, sausage meat, rich tomato base, peppers, garlic, make-ahead sauce, family favourite')
             ON DUPLICATE KEY UPDATE 
             image='/images/sausage-pasta-sauce/200/sausage-pasta-sauce-and-fusilli.webp', caption='sausage pasta sauce', imgTitle='sausage pasta sauce topped with cheese', description='chunky pasta sauce, sausage meat, rich tomato base, peppers, garlic, make-ahead sauce, family favourite';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('sausages & bacon', '/images/sausagepepperpie/200/sausagepeppermashpie-01.webp', 'sausage & pepper mash pie', 'sausagepepperpie', 'sausage pepper mash pie', 'sausage and pepper pie, puff pastry, sweet peppers, onions, oven-baked, simple and tasty, lunch or dinner')
             ON DUPLICATE KEY UPDATE 
             image='/images/sausagepepperpie/200/sausagepeppermashpie-01.webp', caption='sausage & pepper mash pie', imgTitle='sausage pepper mash pie', description='sausage and pepper pie, puff pastry, sweet peppers, onions, oven-baked, simple and tasty, lunch or dinner';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('sausages & bacon', '/images/sausageonionpie/200/pie-on-board-07.jpg', 'sausage & onion pie', 'sausageonionpie', 'sausage & onion pie', 'homemade sausage pie, caramelised onions, shortcrust pastry, baked pie, comfort food, traditional flavours')
             ON DUPLICATE KEY UPDATE 
             image='/images/sausageonionpie/200/pie-on-board-07.jpg', caption='sausage & onion pie', imgTitle='sausage & onion pie', description='homemade sausage pie, caramelised onions, shortcrust pastry, baked pie, comfort food, traditional flavours';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('sausages & bacon', '/images/caulifrankcheese/200/meal-cooked-01.jpg', 'cauliflower cheese & frankfurter bake', 'caulifrankcheese', 'cauliflower cheese & frankfurter bake', 'A comforting bake of tender cauliflower florets and frankfurters smothered in a creamy cheese sauce, then baked until bubbly and golden.')
             ON DUPLICATE KEY UPDATE 
             image='/images/caulifrankcheese/200/meal-cooked-01.jpg', caption='cauliflower cheese & frankfurter bake', imgTitle='cauliflower cheese & frankfurter bake', description='A comforting bake of tender cauliflower florets and frankfurters smothered in a creamy cheese sauce, then baked until bubbly and golden.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('sausages & bacon', '/images/gammon-joint-and-mustard-sauce/200/gammon-dinner-plated-1.webp', 'gammon joint & mustard sauce', 'gammon-joint-with-mustard-sauce', 'gammon with mustard sauce, creamy mash & roast cauliflower', 'Succulent gammon joint roasted to perfection and served with a tangy mustard sauce, making for an impressive centerpiece.')
             ON DUPLICATE KEY UPDATE 
             image='/images/gammon-joint-and-mustard-sauce/200/gammon-dinner-plated-1.webp', caption='gammon joint & mustard sauce', imgTitle='gammon with mustard sauce, creamy mash & roast cauliflower', description='Succulent gammon joint roasted to perfection and served with a tangy mustard sauce, making for an impressive centerpiece.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('sausages & bacon', '/images/quiche-lorraine/200/quiche-lorraine-cooked.webp', 'quiche lorraine', 'quiche-lorraine', 'the ultimate quiche lorraine', 'A classic French tart filled with smoky bacon, rich cheese, and a creamy egg custard, all nestled in a buttery pastry crust.')
             ON DUPLICATE KEY UPDATE 
             image='/images/quiche-lorraine/200/quiche-lorraine-cooked.webp', caption='quiche lorraine', imgTitle='the ultimate quiche lorraine', description='A classic French tart filled with smoky bacon, rich cheese, and a creamy egg custard, all nestled in a buttery pastry crust.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('sausages & bacon', '/images/sausage-roll-and-caramalised-onion/200/sausage-roll-sliced.webp', 'Sausage Roll & Caramalised Onion', 'sausage-roll-and-caramalised-onion', 'sausage roll sliced with home made tomato chutney', 'Flaky pastry wrapped around seasoned sausage meat and sweet caramelized onions, baked to golden perfection. A perfect snack or appetizer.')
             ON DUPLICATE KEY UPDATE 
             image='/images/sausage-roll-and-caramalised-onion/200/sausage-roll-sliced.webp', caption='Sausage Roll & Caramalised Onion', imgTitle='sausage roll sliced with home made tomato chutney', description='Flaky pastry wrapped around seasoned sausage meat and sweet caramelized onions, baked to golden perfection. A perfect snack or appetizer.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('chicken', '/images/chickensoup/200/Chicken-soup-in-large-dish.webp', 'grandma''s chicken soup', 'chickensoup', 'grandma''s chicken soup', 'A soothing chicken soup brimming with tender chicken pieces, vegetables, and herbs. Ideal for warming up on chilly days.')
             ON DUPLICATE KEY UPDATE 
             image='/images/chickensoup/200/Chicken-soup-in-large-dish.webp', caption='grandma''s chicken soup', imgTitle='grandma''s chicken soup', description='A soothing chicken soup brimming with tender chicken pieces, vegetables, and herbs. Ideal for warming up on chilly days.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('chicken', '/images/chickenchillimex/200/chicken-chilli-cooking.jpg', 'chicken chilli mexican', 'chickenchilimex', 'chicken chilli mexican', 'A spicy Mexican-inspired chicken chili featuring tender chicken, beans, and a blend of bold spices. Perfect with rice or tortillas.')
             ON DUPLICATE KEY UPDATE 
             image='/images/chickenchillimex/200/chicken-chilli-cooking.jpg', caption='chicken chilli mexican', imgTitle='chicken chilli mexican', description='A spicy Mexican-inspired chicken chili featuring tender chicken, beans, and a blend of bold spices. Perfect with rice or tortillas.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('chicken', '/images/easychickencurry/200/finished-curry-in-pan.png', 'easy chicken curry', 'easy-chicken-curry', 'easy chicken curry', 'A simple yet flavorful chicken curry with tender chicken pieces simmered in a rich, aromatic sauce. Great for a quick weeknight dinner.')
             ON DUPLICATE KEY UPDATE 
             image='/images/easychickencurry/200/finished-curry-in-pan.png', caption='easy chicken curry', imgTitle='easy chicken curry', description='A simple yet flavorful chicken curry with tender chicken pieces simmered in a rich, aromatic sauce. Great for a quick weeknight dinner.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('chicken', '/images/chickenmushroompasta/200/pasta-sauce-in-pan.jpg', 'chicken & mushroom pasta', 'chickenmushroompasta', 'chicken & mushroom pasta', 'Creamy pasta dish combining tender chicken and earthy mushrooms in a luscious sauce. A comforting and satisfying meal.')
             ON DUPLICATE KEY UPDATE 
             image='/images/chickenmushroompasta/200/pasta-sauce-in-pan.jpg', caption='chicken & mushroom pasta', imgTitle='chicken & mushroom pasta', description='Creamy pasta dish combining tender chicken and earthy mushrooms in a luscious sauce. A comforting and satisfying meal.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('chicken', '/images/chickenlasagne/200/chicken-lasagne-01.jpg', 'chicken & mushroom lasagne', 'chickenlasagne', 'chicken & mushroom lasagne', 'A delightful twist on the classic lasagne, featuring layers of pasta, tender chicken, rich tomato sauce, and creamy béchamel.')
             ON DUPLICATE KEY UPDATE 
             image='/images/chickenlasagne/200/chicken-lasagne-01.jpg', caption='chicken & mushroom lasagne', imgTitle='chicken & mushroom lasagne', description='A delightful twist on the classic lasagne, featuring layers of pasta, tender chicken, rich tomato sauce, and creamy béchamel.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('chicken', '/images/sweet-sour-roast-chicken/200/spring-onion-added-to-sauce.jpg', 'sweet & sour roast chicken', 'sweet-and-sour-roast-chicken', 'sweet & sour chicken', 'Roast chicken glazed with a tangy sweet and sour sauce, resulting in a flavorful and juicy main course.')
             ON DUPLICATE KEY UPDATE 
             image='/images/sweet-sour-roast-chicken/200/spring-onion-added-to-sauce.jpg', caption='sweet & sour roast chicken', imgTitle='sweet & sour chicken', description='Roast chicken glazed with a tangy sweet and sour sauce, resulting in a flavorful and juicy main course.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('chicken', '/images/chickenvindaloo/200/vindaloo-simmering.webp', 'indian chicken vindaloo', 'chickenvindaloo', 'indian chicken vindaloo', 'A fiery Goan-style chicken curry with bold spices and a tangy sauce. Perfect for those who enjoy a spicy kick.')
             ON DUPLICATE KEY UPDATE 
             image='/images/chickenvindaloo/200/vindaloo-simmering.webp', caption='indian chicken vindaloo', imgTitle='indian chicken vindaloo', description='A fiery Goan-style chicken curry with bold spices and a tangy sauce. Perfect for those who enjoy a spicy kick.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('chicken', '/images/chicken-thighs-in-spicey-hot-sauce/200/chicken-thighs-in-spicy-hot-sauce.webp', 'chicken thighs in spicy hot sauce', 'chicken-thighs-in-spicy-hot-sauce', 'chicken thighs in spicy hot sauce', 'Juicy chicken thighs cooked in a spicy hot sauce, delivering a flavorful and heat-packed dish.')
             ON DUPLICATE KEY UPDATE 
             image='/images/chicken-thighs-in-spicey-hot-sauce/200/chicken-thighs-in-spicy-hot-sauce.webp', caption='chicken thighs in spicy hot sauce', imgTitle='chicken thighs in spicy hot sauce', description='Juicy chicken thighs cooked in a spicy hot sauce, delivering a flavorful and heat-packed dish.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('chicken', '/images/karahi-chicken-curry/200/corriander-added-to-karahi-chicken-curry.webp', 'karahi chicken curry', 'karahi-chicken-curry', 'corriander added to finish the karahi chicken curry', 'A traditional Pakistani chicken curry cooked in a wok-like karahi, featuring tender chicken and a spicy tomato-based sauce.')
             ON DUPLICATE KEY UPDATE 
             image='/images/karahi-chicken-curry/200/corriander-added-to-karahi-chicken-curry.webp', caption='karahi chicken curry', imgTitle='corriander added to finish the karahi chicken curry', description='A traditional Pakistani chicken curry cooked in a wok-like karahi, featuring tender chicken and a spicy tomato-based sauce.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('chicken', '/images/chickenmushroompie/200/chicken-pie-cooked-01.webp', 'chicken & mushroom pie', 'chickenmushroompie', 'chicken & mushroom pie', 'A hearty pie filled with tender chicken and mushrooms in a creamy sauce, all encased in a flaky pastry crust.')
             ON DUPLICATE KEY UPDATE 
             image='/images/chickenmushroompie/200/chicken-pie-cooked-01.webp', caption='chicken & mushroom pie', imgTitle='chicken & mushroom pie', description='A hearty pie filled with tender chicken and mushrooms in a creamy sauce, all encased in a flaky pastry crust.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('chicken', '/images/chicken-and-gammon-pie/200/pie-cooked-trimmed-2.webp', 'chicken & gammon pie', 'chicken-and-gammon-pie', 'chicken & gammon pie', 'A savory pie combining succulent chicken and gammon in a rich sauce, baked within a golden pastry shell.')
             ON DUPLICATE KEY UPDATE 
             image='/images/chicken-and-gammon-pie/200/pie-cooked-trimmed-2.webp', caption='chicken & gammon pie', imgTitle='chicken & gammon pie', description='A savory pie combining succulent chicken and gammon in a rich sauce, baked within a golden pastry shell.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('chicken', '/images/jerk-chicken/200/jerk-chicken-plated.webp', 'jerk chicken', 'jerk-chicken', 'jerk chicken stacked on a plate ready to serve', 'Authentic Jamaican jerk chicken marinated in a spicy blend of herbs and spices, then grilled to perfection.')
             ON DUPLICATE KEY UPDATE 
             image='/images/jerk-chicken/200/jerk-chicken-plated.webp', caption='jerk chicken', imgTitle='jerk chicken stacked on a plate ready to serve', description='Authentic Jamaican jerk chicken marinated in a spicy blend of herbs and spices, then grilled to perfection.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('chicken', '/images/spicy-masala-chicken/200/spicy-masala-chicken-tarka-dhal-naan-plated.webp', 'spicy masala chicken', 'spicy-masala-chicken', 'spicy masala chicken served with tarka dhal and naan bread', 'An Indian-inspired dish featuring chicken cooked in a spicy and aromatic masala sauce.')
             ON DUPLICATE KEY UPDATE 
             image='/images/spicy-masala-chicken/200/spicy-masala-chicken-tarka-dhal-naan-plated.webp', caption='spicy masala chicken', imgTitle='spicy masala chicken served with tarka dhal and naan bread', description='An Indian-inspired dish featuring chicken cooked in a spicy and aromatic masala sauce.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('chicken', '/images/jerked-chicken-curry/200/jerked-chicken-and-macaroni-pie-plated-03.webp', 'jerked chicken curry', 'jerked-chicken-curry', 'jerked chicken curry served with blue cheese macaroni pie', 'A fusion dish combining Jamaican jerk flavors with a hearty chicken curry. Spicy, flavorful, and unique.')
             ON DUPLICATE KEY UPDATE 
             image='/images/jerked-chicken-curry/200/jerked-chicken-and-macaroni-pie-plated-03.webp', caption='jerked chicken curry', imgTitle='jerked chicken curry served with blue cheese macaroni pie', description='A fusion dish combining Jamaican jerk flavors with a hearty chicken curry. Spicy, flavorful, and unique.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('chicken', '/images/chipotle-chicken-burrito/200/chipotle-chicken-chilli-burrito.webp', 'chipotle chicken burrito', 'chipotle-chicken-burrito', 'chipotle chicken burrito served with cheese and lettuce', 'A hearty burrito filled with smoky chipotle-seasoned chicken, beans, rice, and fresh toppings.')
             ON DUPLICATE KEY UPDATE 
             image='/images/chipotle-chicken-burrito/200/chipotle-chicken-chilli-burrito.webp', caption='chipotle chicken burrito', imgTitle='chipotle chicken burrito served with cheese and lettuce', description='A hearty burrito filled with smoky chipotle-seasoned chicken, beans, rice, and fresh toppings.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('chicken', '/images/tandoori-chicken/200/cooked-tandori-chicken-on-plate-02.webp', 'classic tandoori chicken', 'tandoori-chicken', 'tandoori chicken on plate ready to serve', 'Classic Indian dish of chicken marinated in yogurt and spices, then roasted to achieve a smoky flavor.')
             ON DUPLICATE KEY UPDATE 
             image='/images/tandoori-chicken/200/cooked-tandori-chicken-on-plate-02.webp', caption='classic tandoori chicken', imgTitle='tandoori chicken on plate ready to serve', description='Classic Indian dish of chicken marinated in yogurt and spices, then roasted to achieve a smoky flavor.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('chicken', '/images/chicken-with-mango/200/chicken-with-mango-plated-02.webp', 'chicken with mango', 'chicken-with-mango', 'chicken with mango plated with plain basmati rice', 'A delightful combination of tender chicken pieces and sweet, juicy mango in a flavorful sauce.')
             ON DUPLICATE KEY UPDATE 
             image='/images/chicken-with-mango/200/chicken-with-mango-plated-02.webp', caption='chicken with mango', imgTitle='chicken with mango plated with plain basmati rice', description='A delightful combination of tender chicken pieces and sweet, juicy mango in a flavorful sauce.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('chicken', '/images/chicken-in-cashew-nut-sauce/200/chicken-in-cashew-nut-sauce-plated.webp', 'chicken in cashew nut sauce', 'chicken-in-cashew-nut-sauce', 'chicken in cashew nut sauce with basmati rice', 'Rich and creamy chicken dish featuring a luscious cashew nut-based sauce.')
             ON DUPLICATE KEY UPDATE 
             image='/images/chicken-in-cashew-nut-sauce/200/chicken-in-cashew-nut-sauce-plated.webp', caption='chicken in cashew nut sauce', imgTitle='chicken in cashew nut sauce with basmati rice', description='Rich and creamy chicken dish featuring a luscious cashew nut-based sauce.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('chicken', '/images/chicken-tandoori-grill/200/chicken-tandoori-grill-plated-01.webp', 'chicken tandoori grill', 'chicken-tandoori-grill', 'chicken tandoori grill, salad, rice salad & raita', 'Grilled tandoori chicken with a smoky flavor and vibrant spices. Perfect for outdoor grilling.')
             ON DUPLICATE KEY UPDATE 
             image='/images/chicken-tandoori-grill/200/chicken-tandoori-grill-plated-01.webp', caption='chicken tandoori grill', imgTitle='chicken tandoori grill, salad, rice salad & raita', description='Grilled tandoori chicken with a smoky flavor and vibrant spices. Perfect for outdoor grilling.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('chicken', '/images/khara-masala-balti-chicken/200/khara-masala-balti-chicken-plated-03.webp', 'khara masala balti chicken', 'khara-masala-balti-chicken', 'khara masala balti chicken with salad & naan', 'A flavorful Balti-style chicken curry with whole spices and a rich, aromatic sauce.')
             ON DUPLICATE KEY UPDATE 
             image='/images/khara-masala-balti-chicken/200/khara-masala-balti-chicken-plated-03.webp', caption='khara masala balti chicken', imgTitle='khara masala balti chicken with salad & naan', description='A flavorful Balti-style chicken curry with whole spices and a rich, aromatic sauce.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('chicken', '/images/jerked-chicken-escalope-grill/200/jerk-chicken-escalope-plated-03.webp', 'jerked chicken escalope grill', 'jerked-chicken-escalope-grill', 'jerked chicken escalope grill with new potatoes & salad', 'Thin chicken escalopes marinated in jerk seasoning and grilled to perfection. Spicy and delicious.')
             ON DUPLICATE KEY UPDATE 
             image='/images/jerked-chicken-escalope-grill/200/jerk-chicken-escalope-plated-03.webp', caption='jerked chicken escalope grill', imgTitle='jerked chicken escalope grill with new potatoes & salad', description='Thin chicken escalopes marinated in jerk seasoning and grilled to perfection. Spicy and delicious.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('chicken', '/images/chinese-chicken-curry/200/chinese-chicken-curry-and-rice.webp', 'chinese chicken curry', 'chinese-chicken-curry', 'chinese chicken curry and rice - just like the takeaway does it!', 'A Chinese takeout favorite featuring tender chicken pieces in a mild and flavorful curry sauce.')
             ON DUPLICATE KEY UPDATE 
             image='/images/chinese-chicken-curry/200/chinese-chicken-curry-and-rice.webp', caption='chinese chicken curry', imgTitle='chinese chicken curry and rice - just like the takeaway does it!', description='A Chinese takeout favorite featuring tender chicken pieces in a mild and flavorful curry sauce.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('chicken', '/images/chicken-and-tomato-balti/200/chicken-and-tomato-balti-plated-03.webp', 'chicken & tomato balti', 'chicken-and-tomato-balti', 'chicken & tomato balti plated with plain basmati rice', 'Succulent chicken simmered with tomatoes and warming spices in this easy homemade balti, perfect with rice or naan.')
             ON DUPLICATE KEY UPDATE 
             image='/images/chicken-and-tomato-balti/200/chicken-and-tomato-balti-plated-03.webp', caption='chicken & tomato balti', imgTitle='chicken & tomato balti plated with plain basmati rice', description='Succulent chicken simmered with tomatoes and warming spices in this easy homemade balti, perfect with rice or naan.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('chicken', '/images/chicken-in-creamy-peppercorn-sauce/200/chicken-in-creamy-peppercorn-sauce-plated.webp', 'chicken in creamy peppercorn sauce', 'chicken-in-creamy-peppercorn-sauce', 'chicken creamy peppercorn sauce mash and veg', 'Juicy chicken in a creamy peppercorn sauce, perfect for an indulgent midweek meal with mash or rice.')
             ON DUPLICATE KEY UPDATE 
             image='/images/chicken-in-creamy-peppercorn-sauce/200/chicken-in-creamy-peppercorn-sauce-plated.webp', caption='chicken in creamy peppercorn sauce', imgTitle='chicken creamy peppercorn sauce mash and veg', description='Juicy chicken in a creamy peppercorn sauce, perfect for an indulgent midweek meal with mash or rice.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('chicken', '/images/butter-chicken/200/butter-chicken-plated.webp', 'butter chicken', 'butter-chicken', 'butter chicken served with jeera rice', 'Classic butter chicken with rich, spiced tomato sauce and tender chunks of chicken, finished with cream.')
             ON DUPLICATE KEY UPDATE 
             image='/images/butter-chicken/200/butter-chicken-plated.webp', caption='butter chicken', imgTitle='butter chicken served with jeera rice', description='Classic butter chicken with rich, spiced tomato sauce and tender chunks of chicken, finished with cream.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('chicken', '/images/chicken-tikka-grilled-escalope/200/chicken-tikka-dinner-01.webp', 'chicken tikka grilled escalope', 'chicken-tikka-grilled-escalope', 'chicken tikka grilled escalope with naan raita & salad', 'Grilled chicken escalopes marinated in tikka spices—flavourful, fast, and great with salad or wraps.')
             ON DUPLICATE KEY UPDATE 
             image='/images/chicken-tikka-grilled-escalope/200/chicken-tikka-dinner-01.webp', caption='chicken tikka grilled escalope', imgTitle='chicken tikka grilled escalope with naan raita & salad', description='Grilled chicken escalopes marinated in tikka spices—flavourful, fast, and great with salad or wraps.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('chicken', '/images/curry-leaf-masala-chicken-fry/200/curry-leaf-masala-and-rice-02.webp', 'Curry Leaf Masala Chicken Fry', 'curry-leaf-masala-chicken-fry', 'authentic indian curry leaf masala chicken fry with basmati rice', 'A deeply authentic Indian dish with rich, earthy masala and the unmistakable aroma of fresh curry leaves. It’s not fiery hot — just full of bold, balanced flavour.')
             ON DUPLICATE KEY UPDATE 
             image='/images/curry-leaf-masala-chicken-fry/200/curry-leaf-masala-and-rice-02.webp', caption='Curry Leaf Masala Chicken Fry', imgTitle='authentic indian curry leaf masala chicken fry with basmati rice', description='A deeply authentic Indian dish with rich, earthy masala and the unmistakable aroma of fresh curry leaves. It’s not fiery hot — just full of bold, balanced flavour.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('chicken', '/images/luxury-chicken-pie/200/cold-pie-on-a-plate-with-fork.webp', 'luxury chicken pie', 'luxury-chicken-pie', 'luxury chicken, mushroom & leek pie with a fork on a plate', 'A proper Sunday dinner pie—chunks of chicken in creamy white sauce with leeks and mushrooms under buttery pastry.')
             ON DUPLICATE KEY UPDATE 
             image='/images/luxury-chicken-pie/200/cold-pie-on-a-plate-with-fork.webp', caption='luxury chicken pie', imgTitle='luxury chicken, mushroom & leek pie with a fork on a plate', description='A proper Sunday dinner pie—chunks of chicken in creamy white sauce with leeks and mushrooms under buttery pastry.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('beef', '/images/cornedbeefmash/200/cornedbeef-mash-pie.jpg', 'corned beef mash pie', 'cornedbeefmashpie', 'corned beef mash pie', 'Comforting corned beef mash pie, layered with seasoned mash and savoury beef—budget-friendly and tasty.')
             ON DUPLICATE KEY UPDATE 
             image='/images/cornedbeefmash/200/cornedbeef-mash-pie.jpg', caption='corned beef mash pie', imgTitle='corned beef mash pie', description='Comforting corned beef mash pie, layered with seasoned mash and savoury beef—budget-friendly and tasty.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('beef', '/images/beefspinachcurry/200/spinach-added-to-curry.jpg', 'beef & spinach curry', 'beefspinachcurry', 'beef & spinach curry', 'Spiced beef and spinach curry cooked with tomatoes and warming spices—wholesome and hearty.')
             ON DUPLICATE KEY UPDATE 
             image='/images/beefspinachcurry/200/spinach-added-to-curry.jpg', caption='beef & spinach curry', imgTitle='beef & spinach curry', description='Spiced beef and spinach curry cooked with tomatoes and warming spices—wholesome and hearty.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('beef', '/images/beefporkpastasauce/200/pasta-sauce-marjoram.jpg', 'beef & pork pasta sauce', 'beefporkpastasauce', 'beef & pork pasta sauce', 'Rich and savoury beef & pork pasta sauce—perfect for spaghetti, lasagne, or pasta bakes.')
             ON DUPLICATE KEY UPDATE 
             image='/images/beefporkpastasauce/200/pasta-sauce-marjoram.jpg', caption='beef & pork pasta sauce', imgTitle='beef & pork pasta sauce', description='Rich and savoury beef & pork pasta sauce—perfect for spaghetti, lasagne, or pasta bakes.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('beef', '/images/beefporkchilli/200/beef-and-pork-chilli.webp', 'beef & pork mexican chilli', 'beefporkchilli', 'beef & pork chilli ready to serve', 'A spicy twist on classic chilli—beef and pork slow-cooked with beans, tomatoes, and heat.')
             ON DUPLICATE KEY UPDATE 
             image='/images/beefporkchilli/200/beef-and-pork-chilli.webp', caption='beef & pork mexican chilli', imgTitle='beef & pork chilli ready to serve', description='A spicy twist on classic chilli—beef and pork slow-cooked with beans, tomatoes, and heat.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('beef', '/images/beefporkpastabake/200/pasta-bake-done.jpg', 'beef & pork pasta bake', 'beefporkpastabake', 'beef & pork pasta bake', 'Cheesy pasta bake with beef and pork mince in a tomato sauce—comfort food at its best.')
             ON DUPLICATE KEY UPDATE 
             image='/images/beefporkpastabake/200/pasta-bake-done.jpg', caption='beef & pork pasta bake', imgTitle='beef & pork pasta bake', description='Cheesy pasta bake with beef and pork mince in a tomato sauce—comfort food at its best.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('beef', '/images/cottage-pie/200/cottage-pie-cooked-2.jpg', 'cottage pie', 'cottage-pie', 'cottage pie in square serving dish', 'Hearty cottage pie with a savoury mince base and fluffy mashed potato topping—an old-school classic.')
             ON DUPLICATE KEY UPDATE 
             image='/images/cottage-pie/200/cottage-pie-cooked-2.jpg', caption='cottage pie', imgTitle='cottage pie in square serving dish', description='Hearty cottage pie with a savoury mince base and fluffy mashed potato topping—an old-school classic.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('beef', '/images/beef-pork-madras/200/beef-and-pork-madras.webp', 'beef & pork madras', 'beef-pork-madras', 'beef and pork madras', 'Madras-style curry with beef and pork mince, cooked with a fiery blend of spices—deeply satisfying.')
             ON DUPLICATE KEY UPDATE 
             image='/images/beef-pork-madras/200/beef-and-pork-madras.webp', caption='beef & pork madras', imgTitle='beef and pork madras', description='Madras-style curry with beef and pork mince, cooked with a fiery blend of spices—deeply satisfying.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('beef', '/images/beefy-meatballs/200/meatballs-finished.webp', 'beefy meatballs in onion gravy', 'beefy-meatballs-onion-gravy', 'beefy meatballs in onion gravy', 'Juicy meatballs in rich onion gravy—serve with mash or chips for a proper homely dinner.')
             ON DUPLICATE KEY UPDATE 
             image='/images/beefy-meatballs/200/meatballs-finished.webp', caption='beefy meatballs in onion gravy', imgTitle='beefy meatballs in onion gravy', description='Juicy meatballs in rich onion gravy—serve with mash or chips for a proper homely dinner.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('beef', '/images/braised-steak/200/braised-steak-mash-and-broccoli.webp', 'mum''s braised steak & mash', 'mums-braised-steak', 'mum''s braised steak & mash', 'Slow-braised steak just like Mum made—tender meat in savoury gravy, perfect with mash.')
             ON DUPLICATE KEY UPDATE 
             image='/images/braised-steak/200/braised-steak-mash-and-broccoli.webp', caption='mum''s braised steak & mash', imgTitle='mum''s braised steak & mash', description='Slow-braised steak just like Mum made—tender meat in savoury gravy, perfect with mash.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('beef', '/images/beef-curry-with-green-beans/200/beef-curry-with-green-beans-1.jpg', 'beef curry with green beans', 'beef-curry-with-green-beans', 'beef curry with green beans in a pan', 'A warming curry of beef with green beans, slow-cooked in aromatic spices—great with rice or naan.')
             ON DUPLICATE KEY UPDATE 
             image='/images/beef-curry-with-green-beans/200/beef-curry-with-green-beans-1.jpg', caption='beef curry with green beans', imgTitle='beef curry with green beans in a pan', description='A warming curry of beef with green beans, slow-cooked in aromatic spices—great with rice or naan.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('beef', '/images/beef-mushroom-suet-pie/200/pie-and-broccoli-plated-2.webp', 'beef and mushroom suet pastry pie', 'beef-and-mushroom-suet-pastry-pie', 'beef and mushroom suet pastry pie & boccoli', 'Beef and mushrooms in rich gravy, topped with a traditional suet crust—classic British pie comfort.')
             ON DUPLICATE KEY UPDATE 
             image='/images/beef-mushroom-suet-pie/200/pie-and-broccoli-plated-2.webp', caption='beef and mushroom suet pastry pie', imgTitle='beef and mushroom suet pastry pie & boccoli', description='Beef and mushrooms in rich gravy, topped with a traditional suet crust—classic British pie comfort.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('beef', '/images/nuttys-braised-steak/200/braised-steak-mash-and-veg-plated.webp', 'nutty''s braised steak', 'nuttys-braised-steak', 'nuttys braised steak served with mash & veg', 'Nutty’s signature braised steak—tender beef slow-cooked in a rich onion gravy with homestyle flavours.')
             ON DUPLICATE KEY UPDATE 
             image='/images/nuttys-braised-steak/200/braised-steak-mash-and-veg-plated.webp', caption='nutty''s braised steak', imgTitle='nuttys braised steak served with mash & veg', description='Nutty’s signature braised steak—tender beef slow-cooked in a rich onion gravy with homestyle flavours.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('beef', '/images/authentic-seekh-kebabs/200/seekh-kebab-with-salad-raita-and-pita-bread-02.webp', 'authentic seekh kebab', 'authentic-seekh-kebabs', 'authentic seekh kebab with salad raita and pita bread', 'Authentic seekh kebabs made with spiced minced meat—grilled and juicy, perfect for wraps or sides.')
             ON DUPLICATE KEY UPDATE 
             image='/images/authentic-seekh-kebabs/200/seekh-kebab-with-salad-raita-and-pita-bread-02.webp', caption='authentic seekh kebab', imgTitle='authentic seekh kebab with salad raita and pita bread', description='Authentic seekh kebabs made with spiced minced meat—grilled and juicy, perfect for wraps or sides.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('beef', '/images/rogan-josh/200/rogan-josh-plated.webp', 'rogan josh beef curry', 'rogan-josh-beef-curry', 'rogan josh beef curry with yogurt, basmati rice & naan', 'Deeply flavoured Rogan Josh made with beef—rich, spicy, and slow-cooked to perfection.')
             ON DUPLICATE KEY UPDATE 
             image='/images/rogan-josh/200/rogan-josh-plated.webp', caption='rogan josh beef curry', imgTitle='rogan josh beef curry with yogurt, basmati rice & naan', description='Deeply flavoured Rogan Josh made with beef—rich, spicy, and slow-cooked to perfection.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('beef', '/images/steak-and-ale-pie/200/steak-and-ale-pie-with-veg-on-a-plate-02.webp', 'steak & ale pie', 'steak-and-ale-pie', 'steak and ale pie with veg on a plate', 'Classic steak and ale pie with tender beef in rich ale gravy under a golden pastry crust.')
             ON DUPLICATE KEY UPDATE 
             image='/images/steak-and-ale-pie/200/steak-and-ale-pie-with-veg-on-a-plate-02.webp', caption='steak & ale pie', imgTitle='steak and ale pie with veg on a plate', description='Classic steak and ale pie with tender beef in rich ale gravy under a golden pastry crust.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('beef', '/images/savoury-mince-and-mash/200/savoury-mince-and-mash-plated.webp', 'savoury mince & mash', 'savoury-mince-and-mash', 'savoury mince with fluffy mashed potatoes', 'Quick and tasty savoury mince served over creamy mash—easy comfort food on a budget.')
             ON DUPLICATE KEY UPDATE 
             image='/images/savoury-mince-and-mash/200/savoury-mince-and-mash-plated.webp', caption='savoury mince & mash', imgTitle='savoury mince with fluffy mashed potatoes', description='Quick and tasty savoury mince served over creamy mash—easy comfort food on a budget.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('beef', '/images/beef-stew-and-dumplings/200/beef-stew-and-duplings-cooked.webp', 'beef  stew & dumplings', 'beef-stew-and-dumplings', 'beef stew & dumplings cooked in a Dutch Oven', 'Slow-cooked beef stew packed with veg, served with fluffy dumplings for the ultimate winter warmer.')
             ON DUPLICATE KEY UPDATE 
             image='/images/beef-stew-and-dumplings/200/beef-stew-and-duplings-cooked.webp', caption='beef  stew & dumplings', imgTitle='beef stew & dumplings cooked in a Dutch Oven', description='Slow-cooked beef stew packed with veg, served with fluffy dumplings for the ultimate winter warmer.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('pork', '/images/pork-fried-rice/200/pork-fried-rice.webp', 'pork fried rice', 'pork-fried-rice', 'pork fried rice', 'A flavour-packed Chinese-style pork fried rice with tender strips of pork, egg, spring onions and light soy, perfect as a main or side.')
             ON DUPLICATE KEY UPDATE 
             image='/images/pork-fried-rice/200/pork-fried-rice.webp', caption='pork fried rice', imgTitle='pork fried rice', description='A flavour-packed Chinese-style pork fried rice with tender strips of pork, egg, spring onions and light soy, perfect as a main or side.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('pork', '/images/sweet-sour-pork-fresh/200/sweet-and-sour-pork-cooked.webp', 'sweet and sour pork', 'sweet-and-sour-pork', 'sweet and sour pork', 'Crispy pork in a vibrant, tangy sauce with pineapple, peppers, and onion. This Chinese-style classic is sweet, sour, and totally moreish!')
             ON DUPLICATE KEY UPDATE 
             image='/images/sweet-sour-pork-fresh/200/sweet-and-sour-pork-cooked.webp', caption='sweet and sour pork', imgTitle='sweet and sour pork', description='Crispy pork in a vibrant, tangy sauce with pineapple, peppers, and onion. This Chinese-style classic is sweet, sour, and totally moreish!';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('pork', '/images/pork-vindaloo-fresh/200/vindaloo-cooked-1.webp', 'fresh pork vindaloo', 'pork-vindaloo', 'pork vindaloo made with fresh pork', 'A fiery, spicy Goan-inspired curry that packs a punch! Tender pork in a vinegar-rich sauce with deep, bold spices.')
             ON DUPLICATE KEY UPDATE 
             image='/images/pork-vindaloo-fresh/200/vindaloo-cooked-1.webp', caption='fresh pork vindaloo', imgTitle='pork vindaloo made with fresh pork', description='A fiery, spicy Goan-inspired curry that packs a punch! Tender pork in a vinegar-rich sauce with deep, bold spices.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('pork', '/images/porkvindaloo/200/pork-vindaloo-simmering.webp', 'roast pork vindaloo', 'roastporkvindaloo', 'roast pork vindaloo', 'A brilliant way to repurpose roast pork into a mouth-tingling vindaloo curry. Big flavours, easy prep!')
             ON DUPLICATE KEY UPDATE 
             image='/images/porkvindaloo/200/pork-vindaloo-simmering.webp', caption='roast pork vindaloo', imgTitle='roast pork vindaloo', description='A brilliant way to repurpose roast pork into a mouth-tingling vindaloo curry. Big flavours, easy prep!';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('pork', '/images/pork-blackbean-peppers/200/pork-and-peppers-in-blackbean-sauce.webp', 'pork and peppers in black bean sauce', 'pork-blackbean-sauce-and-peppers', 'pork and peppers in black bean sauce', 'A savoury Chinese-inspired stir-fry with juicy pork, crunchy peppers, and rich black bean sauce. Fast and full of umami!')
             ON DUPLICATE KEY UPDATE 
             image='/images/pork-blackbean-peppers/200/pork-and-peppers-in-blackbean-sauce.webp', caption='pork and peppers in black bean sauce', imgTitle='pork and peppers in black bean sauce', description='A savoury Chinese-inspired stir-fry with juicy pork, crunchy peppers, and rich black bean sauce. Fast and full of umami!';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('pork', '/images/pork-madras/200/pork-madras-curry-finished.webp', 'pork madras curry', 'pork-madras', 'pork madras curry', 'A hot and hearty South Indian curry featuring pork in a spiced tomato-based sauce. Fragrant, bold, and deeply satisfying.')
             ON DUPLICATE KEY UPDATE 
             image='/images/pork-madras/200/pork-madras-curry-finished.webp', caption='pork madras curry', imgTitle='pork madras curry', description='A hot and hearty South Indian curry featuring pork in a spiced tomato-based sauce. Fragrant, bold, and deeply satisfying.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('pork', '/images/bellyporkdinner/200/dinner-plated.webp', 'belly pork dinner', 'bellyporkdinner', 'belly pork dinner', 'Slow-roasted belly pork with crackling, served with rich gravy and vegetables — a comforting, indulgent Sunday roast.')
             ON DUPLICATE KEY UPDATE 
             image='/images/bellyporkdinner/200/dinner-plated.webp', caption='belly pork dinner', imgTitle='belly pork dinner', description='Slow-roasted belly pork with crackling, served with rich gravy and vegetables — a comforting, indulgent Sunday roast.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('pork', '/images/pork-chilli/200/pork-chilli-served.webp', 'pork chilli', 'pork-chilli', 'pork chilli served with a pitta bread', 'A spicy take on classic chilli using minced pork, kidney beans, and smoky chilli spices. Great with rice or over a jacket potato!')
             ON DUPLICATE KEY UPDATE 
             image='/images/pork-chilli/200/pork-chilli-served.webp', caption='pork chilli', imgTitle='pork chilli served with a pitta bread', description='A spicy take on classic chilli using minced pork, kidney beans, and smoky chilli spices. Great with rice or over a jacket potato!';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('pork', '/images/roast-pork-stroganoff/200/pork-stroganoff-plated-3.jpg', 'roast pork stroganoff', 'roast-pork-stroganoff', 'roast pork stroganoff plated with sweet root mash & brocolli', 'A creamy, comforting dish using roast pork in a sour cream and mushroom sauce. A brilliant twist on a Russian favourite.')
             ON DUPLICATE KEY UPDATE 
             image='/images/roast-pork-stroganoff/200/pork-stroganoff-plated-3.jpg', caption='roast pork stroganoff', imgTitle='roast pork stroganoff plated with sweet root mash & brocolli', description='A creamy, comforting dish using roast pork in a sour cream and mushroom sauce. A brilliant twist on a Russian favourite.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('pork', '/images/porksupreme/200/pork-in-creamy-pepper-sauce.jpg', 'pork in creamy pepper sauce', 'porksupreme', 'pork in creamy pepper sauce', 'Juicy pork steaks in a luxurious creamy sauce with herbs and mushrooms — a simple, elegant dinner that feels fancy but is easy to make.')
             ON DUPLICATE KEY UPDATE 
             image='/images/porksupreme/200/pork-in-creamy-pepper-sauce.jpg', caption='pork in creamy pepper sauce', imgTitle='pork in creamy pepper sauce', description='Juicy pork steaks in a luxurious creamy sauce with herbs and mushrooms — a simple, elegant dinner that feels fancy but is easy to make.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('pork', '/images/jerked-pork-steaks/200/jerked-pork-steak-plated-01.webp', 'jerked pork steaks grill', 'jerked-pork-steaks-grill', 'jerked pork steak served with potato salad & salad', 'Pork steaks rubbed with spicy jerk seasoning and grilled to perfection — smoky, spicy, and packed with Caribbean flair!')
             ON DUPLICATE KEY UPDATE 
             image='/images/jerked-pork-steaks/200/jerked-pork-steak-plated-01.webp', caption='jerked pork steaks grill', imgTitle='jerked pork steak served with potato salad & salad', description='Pork steaks rubbed with spicy jerk seasoning and grilled to perfection — smoky, spicy, and packed with Caribbean flair!';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('pork', '/images/peri-peri-pork-steaks/200/peri-peri-pork-steaks-plated.webp', 'peri peri pork steaks', 'peri-peri-pork-steaks', 'peri peri pork steaks served with side salad & jacket potato with cheese', 'Zingy and spicy peri-peri pork steaks grilled for that fiery Portuguese-inspired flavour — great with chips or salad!')
             ON DUPLICATE KEY UPDATE 
             image='/images/peri-peri-pork-steaks/200/peri-peri-pork-steaks-plated.webp', caption='peri peri pork steaks', imgTitle='peri peri pork steaks served with side salad & jacket potato with cheese', description='Zingy and spicy peri-peri pork steaks grilled for that fiery Portuguese-inspired flavour — great with chips or salad!';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('pork', '/images/jerked-pork-curry/200/jerked-pork-rice-and-peas-01.webp', 'jerked pork curry', 'jerked-pork-curry', 'jerked pork curry rice and peas', 'A spicy Caribbean fusion curry with bold jerk flavours simmered into tender pork chunks. Warming and full of character.')
             ON DUPLICATE KEY UPDATE 
             image='/images/jerked-pork-curry/200/jerked-pork-rice-and-peas-01.webp', caption='jerked pork curry', imgTitle='jerked pork curry rice and peas', description='A spicy Caribbean fusion curry with bold jerk flavours simmered into tender pork chunks. Warming and full of character.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('pork', '/images/mediterranean-style-vegetables-with-pork-steaks/200/mediterranean-style-veg-with-pork-steaks-plated-03.webp', 'mediterranean style veg'' with pork steaks', 'mediterranean-style-vegetables-with-pork-steaks', 'Mediterranean style vegetables with pork steaks', 'A light, colourful dish of pork steaks paired with roasted Mediterranean vegetables — olive oil, herbs, sunshine on a plate.')
             ON DUPLICATE KEY UPDATE 
             image='/images/mediterranean-style-vegetables-with-pork-steaks/200/mediterranean-style-veg-with-pork-steaks-plated-03.webp', caption='mediterranean style veg'' with pork steaks', imgTitle='Mediterranean style vegetables with pork steaks', description='A light, colourful dish of pork steaks paired with roasted Mediterranean vegetables — olive oil, herbs, sunshine on a plate.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('pork', '/images/rogan-josh-pork-curry/200/rogan-josh-pork-curry.webp', 'rogan josh pork curry', 'rogan-josh-pork-curry', 'rogan josh pork curry', 'A rich, Kashmiri-style pork curry with warm spices and a deep red sauce. Comforting and aromatic with every bite.')
             ON DUPLICATE KEY UPDATE 
             image='/images/rogan-josh-pork-curry/200/rogan-josh-pork-curry.webp', caption='rogan josh pork curry', imgTitle='rogan josh pork curry', description='A rich, Kashmiri-style pork curry with warm spices and a deep red sauce. Comforting and aromatic with every bite.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('lamb', '/images/lambpeasmintcurry/200/curry-in-pan.webp', 'lamb peas & mint curry', 'lamb-peas-mint-curry', 'lamb peas & mint curry', 'A delicious lamb curry cooked with peas and fresh mint for a sweet and savoury balance, ideal with rice or naan.')
             ON DUPLICATE KEY UPDATE 
             image='/images/lambpeasmintcurry/200/curry-in-pan.webp', caption='lamb peas & mint curry', imgTitle='lamb peas & mint curry', description='A delicious lamb curry cooked with peas and fresh mint for a sweet and savoury balance, ideal with rice or naan.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('lamb', '/images/lambmashpie/200/lamb-mash-pie-ready.webp', 'lamb & mash pie', 'lambmashpie', 'lamb & mash pie', 'A comforting lamb pie with rich minced lamb and creamy mashed potato topping, perfect for chilly evenings.')
             ON DUPLICATE KEY UPDATE 
             image='/images/lambmashpie/200/lamb-mash-pie-ready.webp', caption='lamb & mash pie', imgTitle='lamb & mash pie', description='A comforting lamb pie with rich minced lamb and creamy mashed potato topping, perfect for chilly evenings.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('lamb', '/images/lamb-kofta-curry/200/lamb-kofta-curry-and-rice.webp', 'lamb kofta curry', 'lamb-kofta-curry', 'lamb kofta curry served with basmati rice', 'Tender lamb meatballs simmered in a rich, spiced tomato curry sauce — full of flavour and great with rice or flatbread.')
             ON DUPLICATE KEY UPDATE 
             image='/images/lamb-kofta-curry/200/lamb-kofta-curry-and-rice.webp', caption='lamb kofta curry', imgTitle='lamb kofta curry served with basmati rice', description='Tender lamb meatballs simmered in a rich, spiced tomato curry sauce — full of flavour and great with rice or flatbread.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('lamb', '/images/dodgy-kebab/200/kebab-closed-with-salad-2.webp', 'my dodgy kebab', 'dodgy-kebab', 'Dodgy Kebab! with salad on the side', 'A cheeky homemade take on the classic late-night kebab — tasty, healthier, and fun to make!')
             ON DUPLICATE KEY UPDATE 
             image='/images/dodgy-kebab/200/kebab-closed-with-salad-2.webp', caption='my dodgy kebab', imgTitle='Dodgy Kebab! with salad on the side', description='A cheeky homemade take on the classic late-night kebab — tasty, healthier, and fun to make!';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('lamb', '/images/lamb-curry-with-spinach/200/garam-masala-added-1.webp', 'lamb curry with spinach', 'lamb-curry-with-spinach', 'lamb curry with spinach', 'Slow-cooked lamb in a fragrant curry sauce with fresh spinach for a nutrient-packed, hearty dish.')
             ON DUPLICATE KEY UPDATE 
             image='/images/lamb-curry-with-spinach/200/garam-masala-added-1.webp', caption='lamb curry with spinach', imgTitle='lamb curry with spinach', description='Slow-cooked lamb in a fragrant curry sauce with fresh spinach for a nutrient-packed, hearty dish.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('lamb', '/images/lamb-pulao-rice/200/lamb-pulao-rice-in-dish-02.webp', 'lamb pulao rice', 'lamb-pulao-rice', 'lamb pulao rice served in a dish', 'Fragrant rice cooked with tender lamb, aromatic spices and herbs, perfect for a special meal.')
             ON DUPLICATE KEY UPDATE 
             image='/images/lamb-pulao-rice/200/lamb-pulao-rice-in-dish-02.webp', caption='lamb pulao rice', imgTitle='lamb pulao rice served in a dish', description='Fragrant rice cooked with tender lamb, aromatic spices and herbs, perfect for a special meal.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('lamb', '/images/lamb-tikka-grill-steaks/200/lamb-tikka-grill-steaks-plated.webp', 'lamb tikka grill steaks', 'lamb-tikka-grill-steaks', 'lamb tikka grill steaks with tomato rice & raita', 'Juicy lamb steaks marinated in tikka spices and grilled to perfection — packed with smoky flavour.')
             ON DUPLICATE KEY UPDATE 
             image='/images/lamb-tikka-grill-steaks/200/lamb-tikka-grill-steaks-plated.webp', caption='lamb tikka grill steaks', imgTitle='lamb tikka grill steaks with tomato rice & raita', description='Juicy lamb steaks marinated in tikka spices and grilled to perfection — packed with smoky flavour.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('fish & veg', '/images/caulicheese/200/cauli-cheese-ready-02.jpg', 'cauliflower cheese & beans bake', 'caulicheese', 'cauliflower cheese & beans bake', 'A creamy, cheesy baked cauliflower classic — the perfect side dish or comfort food main.')
             ON DUPLICATE KEY UPDATE 
             image='/images/caulicheese/200/cauli-cheese-ready-02.jpg', caption='cauliflower cheese & beans bake', imgTitle='cauliflower cheese & beans bake', description='A creamy, cheesy baked cauliflower classic — the perfect side dish or comfort food main.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('fish & veg', '/images/vegetarian-chilli/200/vegetarian-chilli-and-buttered-bread-03.webp', 'vegetarian-chilli', 'vegetarian-chilli', 'vegetarian-chilli and buttered bread', 'Spicy, hearty veggie chilli with beans and veg — a meat-free favourite that doesn’t compromise on flavour.')
             ON DUPLICATE KEY UPDATE 
             image='/images/vegetarian-chilli/200/vegetarian-chilli-and-buttered-bread-03.webp', caption='vegetarian-chilli', imgTitle='vegetarian-chilli and buttered bread', description='Spicy, hearty veggie chilli with beans and veg — a meat-free favourite that doesn’t compromise on flavour.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('fish & veg', '/images/macaroni-pie/200/macaroni-pie-baked.webp', 'baked macaroni pie', 'macaroni-pie', 'macaroni pie baked in the oven', 'A rich and cheesy baked macaroni pie with a golden crust — a Caribbean-inspired twist on mac and cheese.')
             ON DUPLICATE KEY UPDATE 
             image='/images/macaroni-pie/200/macaroni-pie-baked.webp', caption='baked macaroni pie', imgTitle='macaroni pie baked in the oven', description='A rich and cheesy baked macaroni pie with a golden crust — a Caribbean-inspired twist on mac and cheese.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('fish & veg', '/images/caulicheesesmokedhaddock/200/cauli-cheese-smoked-haddock-baked-02.webp', 'cauli cheese & smoked haddock', 'cauli-cheese-smoked-haddock-bake', 'cauliflower cheese smoked haddock bake', 'Comforting baked dish with cauliflower cheese and smoked haddock — creamy, savoury, and deeply satisfying.')
             ON DUPLICATE KEY UPDATE 
             image='/images/caulicheesesmokedhaddock/200/cauli-cheese-smoked-haddock-baked-02.webp', caption='cauli cheese & smoked haddock', imgTitle='cauliflower cheese smoked haddock bake', description='Comforting baked dish with cauliflower cheese and smoked haddock — creamy, savoury, and deeply satisfying.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('fish & veg', '/images/aloo-gobi/200/aloo-gobi-plated.webp', 'aloo gobi', 'aloo-gobi', 'aloo gobi on a plate', 'Classic Indian dry curry of potatoes and cauliflower with fragrant spices — vegan and full of flavour.')
             ON DUPLICATE KEY UPDATE 
             image='/images/aloo-gobi/200/aloo-gobi-plated.webp', caption='aloo gobi', imgTitle='aloo gobi on a plate', description='Classic Indian dry curry of potatoes and cauliflower with fragrant spices — vegan and full of flavour.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('fish & veg', '/images/smoked-haddock-in-cheese-sauce/200/smoked-haddock-in-cheese-sauce-plated.webp', 'smoked haddock in cheese sauce', 'smoked-haddock-in-cheese-sauce', 'smoked haddock in cheese sauce served with mashed potatoes and warm buttered baguette', 'Poached smoked haddock served in a rich, cheesy sauce — simple, hearty, and perfect with mash or rice.')
             ON DUPLICATE KEY UPDATE 
             image='/images/smoked-haddock-in-cheese-sauce/200/smoked-haddock-in-cheese-sauce-plated.webp', caption='smoked haddock in cheese sauce', imgTitle='smoked haddock in cheese sauce served with mashed potatoes and warm buttered baguette', description='Poached smoked haddock served in a rich, cheesy sauce — simple, hearty, and perfect with mash or rice.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('fish & veg', '/images/fish-pie/200/fish-pie-baked-02.webp', 'mum''s fish pie', 'fish-pie', 'mum''s fish pie', 'Traditional creamy fish pie with a mash topping — comforting, filling, and a real family favourite.')
             ON DUPLICATE KEY UPDATE 
             image='/images/fish-pie/200/fish-pie-baked-02.webp', caption='mum''s fish pie', imgTitle='mum''s fish pie', description='Traditional creamy fish pie with a mash topping — comforting, filling, and a real family favourite.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('fish & veg', '/images/blue-cheese-macaroni-pie/200/blue-cheese-macaroni-pie-baked.webp', 'blue cheese macaroni pie', 'blue-cheese-macaroni-pie', 'blue cheese macaroni pie in a dish', 'An indulgent twist on macaroni cheese with bold blue cheese baked into a golden pie crust.')
             ON DUPLICATE KEY UPDATE 
             image='/images/blue-cheese-macaroni-pie/200/blue-cheese-macaroni-pie-baked.webp', caption='blue cheese macaroni pie', imgTitle='blue cheese macaroni pie in a dish', description='An indulgent twist on macaroni cheese with bold blue cheese baked into a golden pie crust.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('fish & veg', '/images/cheese-and-onion-quiche/200/cheese-and-onion-quiche-cooked.webp', 'cheese & onion quiche', 'cheese-and-onion-quiche', 'cheese and onion quiche cooked', 'A savoury quiche with tangy cheese and caramelised onions — perfect hot or cold for lunch or picnics.')
             ON DUPLICATE KEY UPDATE 
             image='/images/cheese-and-onion-quiche/200/cheese-and-onion-quiche-cooked.webp', caption='cheese & onion quiche', imgTitle='cheese and onion quiche cooked', description='A savoury quiche with tangy cheese and caramelised onions — perfect hot or cold for lunch or picnics.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('fish & veg', '/images/cauli-curry/200/cauliflower-curry-in-a-pan-01.webp', 'cauliflower curry', 'cauliflower-curry', 'cauliflower curry finished cooking in a pan', 'Simple yet fragrant curry made with cauliflower and warming Indian spices — naturally vegan and delicious.')
             ON DUPLICATE KEY UPDATE 
             image='/images/cauli-curry/200/cauliflower-curry-in-a-pan-01.webp', caption='cauliflower curry', imgTitle='cauliflower curry finished cooking in a pan', description='Simple yet fragrant curry made with cauliflower and warming Indian spices — naturally vegan and delicious.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('fish & veg', '/images/chorizo-cod/200/chorizo-cod-stew-plated-04.webp', 'chorizo cod stew', 'chorizo-cod-stew', 'baked chorizo cod stew served with finely shredded iceberg lettuce', 'Spanish-inspired stew with spicy chorizo, tender cod, and a rich tomato base — warming and rustic.')
             ON DUPLICATE KEY UPDATE 
             image='/images/chorizo-cod/200/chorizo-cod-stew-plated-04.webp', caption='chorizo cod stew', imgTitle='baked chorizo cod stew served with finely shredded iceberg lettuce', description='Spanish-inspired stew with spicy chorizo, tender cod, and a rich tomato base — warming and rustic.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('fish & veg', '/images/smoked-haddock-bacon-bake/200/smoked-haddock-bacon-bake.webp', 'smoked haddock bacon bake', 'smoked-haddock-bacon-bake', 'smoked haddock bacon bake straight from the oven', 'Smoky haddock and crispy bacon baked with creamy potato and cheese — a hearty oven dish.')
             ON DUPLICATE KEY UPDATE 
             image='/images/smoked-haddock-bacon-bake/200/smoked-haddock-bacon-bake.webp', caption='smoked haddock bacon bake', imgTitle='smoked haddock bacon bake straight from the oven', description='Smoky haddock and crispy bacon baked with creamy potato and cheese — a hearty oven dish.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('fish & veg', '/images/fish-and-chorizo-potato-pie/200/fish-and-chorizo-potato-pie-cooked-01.webp', 'Fish & Chorizo Potato Pie', 'fish-and-chorizo-potato-pie', 'Fish & Chorizo Potato Pie', 'A bold and tasty pie layered with fish, spicy chorizo, and sliced potato — perfect for spice lovers.')
             ON DUPLICATE KEY UPDATE 
             image='/images/fish-and-chorizo-potato-pie/200/fish-and-chorizo-potato-pie-cooked-01.webp', caption='Fish & Chorizo Potato Pie', imgTitle='Fish & Chorizo Potato Pie', description='A bold and tasty pie layered with fish, spicy chorizo, and sliced potato — perfect for spice lovers.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('fish & veg', '/images/fish-fillets-with-chilli-sauce/650x366/fish-fillets-with-chilli-sauce-and-saffron-rice-02.webp', 'fish fillets with chilli sauce', 'fish-fillets-with-chilli-sauce', 'fish fillets with chilli sauce & safron rice', 'Pan-fried fish fillets topped with a zingy homemade chilli sauce — fiery, fresh and quick to cook.')
             ON DUPLICATE KEY UPDATE 
             image='/images/fish-fillets-with-chilli-sauce/650x366/fish-fillets-with-chilli-sauce-and-saffron-rice-02.webp', caption='fish fillets with chilli sauce', imgTitle='fish fillets with chilli sauce & safron rice', description='Pan-fried fish fillets topped with a zingy homemade chilli sauce — fiery, fresh and quick to cook.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('fish & veg', '/images/sambar/200/sambar-with-naan-on-the-side.webp', 'sambar &mdash; south Indian lentils & vegetables', 'sambar', 'sambar - south Indian lentils & vegetables', 'A South Indian lentil and vegetable stew with tamarind and spices — tangy, warming, and packed with goodness.')
             ON DUPLICATE KEY UPDATE 
             image='/images/sambar/200/sambar-with-naan-on-the-side.webp', caption='sambar &mdash; south Indian lentils & vegetables', imgTitle='sambar - south Indian lentils & vegetables', description='A South Indian lentil and vegetable stew with tamarind and spices — tangy, warming, and packed with goodness.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('fish & veg', '/images/celeriac-soup/200/celeriac-soup.webp', 'celeriac soup', 'celeriac-soup', 'celeriac soup with crispy celeriac & onion toppin', 'Silky smooth soup made from earthy celeriac and a touch of cream — elegant and comforting.')
             ON DUPLICATE KEY UPDATE 
             image='/images/celeriac-soup/200/celeriac-soup.webp', caption='celeriac soup', imgTitle='celeriac soup with crispy celeriac & onion toppin', description='Silky smooth soup made from earthy celeriac and a touch of cream — elegant and comforting.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('sauce', '/images/whitesauce/200/white-sauce.jpg', 'white sauce', 'whitesauce', 'white sauce', 'Basic white sauce (béchamel) recipe — the essential base for cheese sauce, lasagne and more.')
             ON DUPLICATE KEY UPDATE 
             image='/images/whitesauce/200/white-sauce.jpg', caption='white sauce', imgTitle='white sauce', description='Basic white sauce (béchamel) recipe — the essential base for cheese sauce, lasagne and more.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('sauce', '/images/parsley-sauce/200/parsley-sauce.webp', 'parsley sauce', 'parsley-sauce', 'probably the best home-made parsley in the world!', 'Fresh and creamy parsley sauce — perfect poured over fish, ham, or potatoes.')
             ON DUPLICATE KEY UPDATE 
             image='/images/parsley-sauce/200/parsley-sauce.webp', caption='parsley sauce', imgTitle='probably the best home-made parsley in the world!', description='Fresh and creamy parsley sauce — perfect poured over fish, ham, or potatoes.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('sauce', '/images/onionsauce/200/onion-sauce-jug-01.webp', 'onion sauce', 'onionsauce', 'onion sauce', 'Sweet, savoury onion sauce made from slow-cooked onions — ideal with sausages or pork.')
             ON DUPLICATE KEY UPDATE 
             image='/images/onionsauce/200/onion-sauce-jug-01.webp', caption='onion sauce', imgTitle='onion sauce', description='Sweet, savoury onion sauce made from slow-cooked onions — ideal with sausages or pork.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('sauce', '/images/cheesesauce/200/cheese-sauce-in-pan.jpg', 'cheese sauce', 'cheesesauce', 'cheese sauce', 'Classic homemade cheese sauce — rich, velvety, and perfect for pouring over pasta, veg, or nachos.')
             ON DUPLICATE KEY UPDATE 
             image='/images/cheesesauce/200/cheese-sauce-in-pan.jpg', caption='cheese sauce', imgTitle='cheese sauce', description='Classic homemade cheese sauce — rich, velvety, and perfect for pouring over pasta, veg, or nachos.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('accompaniments', '/images/tomatomexicanrice/200/cooked-rice-in-pan.jpg', 'tomato mexican rice', 'tomatomexicanrice', 'tomato mexican rice', 'Spiced tomato rice with Mexican flair — a vibrant side dish that pairs beautifully with grilled meats or beans.')
             ON DUPLICATE KEY UPDATE 
             image='/images/tomatomexicanrice/200/cooked-rice-in-pan.jpg', caption='tomato mexican rice', imgTitle='tomato mexican rice', description='Spiced tomato rice with Mexican flair — a vibrant side dish that pairs beautifully with grilled meats or beans.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('accompaniments', '/images/chapati/200/chapati-cooking-01.webp', 'chapati flat bread', 'chapati', 'chapati flat bread', 'Soft and warm Indian flatbreads made from wholemeal flour — perfect for scooping up curries.')
             ON DUPLICATE KEY UPDATE 
             image='/images/chapati/200/chapati-cooking-01.webp', caption='chapati flat bread', imgTitle='chapati flat bread', description='Soft and warm Indian flatbreads made from wholemeal flour — perfect for scooping up curries.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('accompaniments', '/images/egg-fried-rice/200/egg-fried-rice-cooked.webp', 'egg fried rice', 'egg-fried-rice', 'egg fried rice', 'Quick and tasty egg fried rice — light, fluffy, and packed with savoury goodness in every bite.')
             ON DUPLICATE KEY UPDATE 
             image='/images/egg-fried-rice/200/egg-fried-rice-cooked.webp', caption='egg fried rice', imgTitle='egg fried rice', description='Quick and tasty egg fried rice — light, fluffy, and packed with savoury goodness in every bite.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('accompaniments', '/images/chinese-noodles-with-beansprouts/200/stirfry-noodles.webp', 'noodles with beansprouts', 'chinese-noodles-with-beansprouts', 'chinese noodles with beansprouts', 'Stir-fried noodles tossed with crunchy beansprouts and soy — a speedy and satisfying dish.')
             ON DUPLICATE KEY UPDATE 
             image='/images/chinese-noodles-with-beansprouts/200/stirfry-noodles.webp', caption='noodles with beansprouts', imgTitle='chinese noodles with beansprouts', description='Stir-fried noodles tossed with crunchy beansprouts and soy — a speedy and satisfying dish.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('accompaniments', '/images/basmati-rice/200/basmati-rice-2.webp', 'basmati rice', 'basmati-rice', 'cooked basmati rice in a bowl', 'Fluffy, fragrant basmati rice cooked to perfection — the essential side for countless dishes.')
             ON DUPLICATE KEY UPDATE 
             image='/images/basmati-rice/200/basmati-rice-2.webp', caption='basmati rice', imgTitle='cooked basmati rice in a bowl', description='Fluffy, fragrant basmati rice cooked to perfection — the essential side for countless dishes.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('accompaniments', '/images/dhal-fried-spices/200/dhal-with-fried-spices-in-dish.webp', 'dhal with fried spices', 'dhal-with-fried-spices', 'dhal with fried spices served in a dish', 'Comforting yellow lentils infused with aromatic fried spices — hearty, nourishing, and vegan-friendly.')
             ON DUPLICATE KEY UPDATE 
             image='/images/dhal-fried-spices/200/dhal-with-fried-spices-in-dish.webp', caption='dhal with fried spices', imgTitle='dhal with fried spices served in a dish', description='Comforting yellow lentils infused with aromatic fried spices — hearty, nourishing, and vegan-friendly.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('accompaniments', '/images/tarka-dhal/200/tarka-dhal-finished.webp', 'tarka dhal', 'tarka-dhal', 'tarka dhal', 'Indian lentil curry with a sizzling spice topping (tarka) — simple, rich, and full of flavour.')
             ON DUPLICATE KEY UPDATE 
             image='/images/tarka-dhal/200/tarka-dhal-finished.webp', caption='tarka dhal', imgTitle='tarka dhal', description='Indian lentil curry with a sizzling spice topping (tarka) — simple, rich, and full of flavour.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('accompaniments', '/images/mashed-roots/200/swede-carrot-potato-mash-1.webp', 'mashed roots', 'mashed-roots', 'mashed roots side dish', 'A rustic mash of seasonal root vegetables — creamy, earthy, and great with roasts or stews.')
             ON DUPLICATE KEY UPDATE 
             image='/images/mashed-roots/200/swede-carrot-potato-mash-1.webp', caption='mashed roots', imgTitle='mashed roots side dish', description='A rustic mash of seasonal root vegetables — creamy, earthy, and great with roasts or stews.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('accompaniments', '/images/spicy-potato-wedges/200/spicy-potato-wedges.webp', 'spicy potato wedges', 'spicy-potato-wedges', 'spicy potato wedges', 'Golden baked potato wedges seasoned with bold spices — crispy on the outside, fluffy inside.')
             ON DUPLICATE KEY UPDATE 
             image='/images/spicy-potato-wedges/200/spicy-potato-wedges.webp', caption='spicy potato wedges', imgTitle='spicy potato wedges', description='Golden baked potato wedges seasoned with bold spices — crispy on the outside, fluffy inside.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('accompaniments', '/images/tomato-chutney/200/tomato-chutney.webp', 'tomato chutney', 'tomato-chutney', 'home made tomato chutney in storage jar', 'Sweet and tangy tomato chutney with a gentle chilli kick — ideal with curries or cold cuts.')
             ON DUPLICATE KEY UPDATE 
             image='/images/tomato-chutney/200/tomato-chutney.webp', caption='tomato chutney', imgTitle='home made tomato chutney in storage jar', description='Sweet and tangy tomato chutney with a gentle chilli kick — ideal with curries or cold cuts.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('accompaniments', '/images/rice-and-peas/200/rice-and-peas-in-bowl-01.webp', 'jamaican rice & peas', 'jamaican-rice-and-peas', 'jamaican rice & Peas', 'Coconut-infused rice with kidney beans and thyme — an iconic Caribbean side bursting with flavour.')
             ON DUPLICATE KEY UPDATE 
             image='/images/rice-and-peas/200/rice-and-peas-in-bowl-01.webp', caption='jamaican rice & peas', imgTitle='jamaican rice & Peas', description='Coconut-infused rice with kidney beans and thyme — an iconic Caribbean side bursting with flavour.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('accompaniments', '/images/christmas-prepared/650x366/bacon-and-cheese-puffs-raw.webp', 'Christmas prepared!', 'christmas-prepared', 'bacon and cheese puffs raw', 'A handy festive checklist and prep guide — make your Christmas dinner stress-free and delicious!')
             ON DUPLICATE KEY UPDATE 
             image='/images/christmas-prepared/650x366/bacon-and-cheese-puffs-raw.webp', caption='Christmas prepared!', imgTitle='bacon and cheese puffs raw', description='A handy festive checklist and prep guide — make your Christmas dinner stress-free and delicious!';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('accompaniments', '/images/spicy-baked-beans-and-peppers/200/spicy-baked-beans-and-peppers.webp', 'spicy baked beans & peppers', 'spicy-baked-beans-and-peppers', 'spicy baked beans & peppers with spicy potato wedges', 'Baked beans with a twist — spiced up with peppers and seasoning for a fiery side dish or main.')
             ON DUPLICATE KEY UPDATE 
             image='/images/spicy-baked-beans-and-peppers/200/spicy-baked-beans-and-peppers.webp', caption='spicy baked beans & peppers', imgTitle='spicy baked beans & peppers with spicy potato wedges', description='Baked beans with a twist — spiced up with peppers and seasoning for a fiery side dish or main.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('accompaniments', '/images/saffron-and-cardamom-rice/650x366/saffron-and-cardamom-rice.webp', 'saffron and cardamom rice', 'saffron-and-cardamom-rice', 'saffron and cardamom rice in a serving dish', 'Delicate, aromatic rice infused with saffron and cardamom — a luxurious, subtly sweet accompaniment.')
             ON DUPLICATE KEY UPDATE 
             image='/images/saffron-and-cardamom-rice/650x366/saffron-and-cardamom-rice.webp', caption='saffron and cardamom rice', imgTitle='saffron and cardamom rice in a serving dish', description='Delicate, aromatic rice infused with saffron and cardamom — a luxurious, subtly sweet accompaniment.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('accompaniments', '/images/fluffy-mashed-potatoes/650x366/fluffy-mash-in-a-bowl-01.webp', 'fluffy mashed potatoes', 'fluffy-mashed-potatoes', 'fluffy mashed potatoes in a bowl', 'Creamy, cloud-like mashed potatoes with just the right balance of butter, seasoning, and fluff — perfect alongside roasts, stews, or simply with gravy!')
             ON DUPLICATE KEY UPDATE 
             image='/images/fluffy-mashed-potatoes/650x366/fluffy-mash-in-a-bowl-01.webp', caption='fluffy mashed potatoes', imgTitle='fluffy mashed potatoes in a bowl', description='Creamy, cloud-like mashed potatoes with just the right balance of butter, seasoning, and fluff — perfect alongside roasts, stews, or simply with gravy!';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('puddings', '/images/pineapplepud/200/cake-cooked.jpg', 'pineapple pudding upside down', 'pineapplepudding', 'pineapple pudding upside down', 'A light and fruity baked pudding with juicy pineapple and a golden sponge topping — sunshine in every bite.')
             ON DUPLICATE KEY UPDATE 
             image='/images/pineapplepud/200/cake-cooked.jpg', caption='pineapple pudding upside down', imgTitle='pineapple pudding upside down', description='A light and fruity baked pudding with juicy pineapple and a golden sponge topping — sunshine in every bite.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('puddings', '/images/pearalmondtart/200/pear-almond-tart-cooling.jpg', 'pear almond tart', 'pearalmondtart', 'pear almond tart', 'Elegant pear tart nestled in frangipane almond filling — sweet, nutty, and buttery with a crisp base.')
             ON DUPLICATE KEY UPDATE 
             image='/images/pearalmondtart/200/pear-almond-tart-cooling.jpg', caption='pear almond tart', imgTitle='pear almond tart', description='Elegant pear tart nestled in frangipane almond filling — sweet, nutty, and buttery with a crisp base.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('puddings', '/images/appleblackberrycrumble/200/apple-blackberry-crumble-01.webp', 'apple & blackberry crumble', 'appleblackberrycrumble', 'apple & blackberry crumble', 'Classic British crumble with juicy apples and tangy blackberries under a golden, crunchy topping.')
             ON DUPLICATE KEY UPDATE 
             image='/images/appleblackberrycrumble/200/apple-blackberry-crumble-01.webp', caption='apple & blackberry crumble', imgTitle='apple & blackberry crumble', description='Classic British crumble with juicy apples and tangy blackberries under a golden, crunchy topping.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('puddings', '/images/gingerbread/200/cake-finished.jpg', 'sticky gingerbread pud', 'gingerbread', 'sticky gingerbread pud', 'Old-fashioned sticky gingerbread — rich with spice and treacle, perfect with custard or a cuppa.')
             ON DUPLICATE KEY UPDATE 
             image='/images/gingerbread/200/cake-finished.jpg', caption='sticky gingerbread pud', imgTitle='sticky gingerbread pud', description='Old-fashioned sticky gingerbread — rich with spice and treacle, perfect with custard or a cuppa.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('puddings', '/images/blackcherrypie/200/cherry-pie-cooked.jpg', 'black cherry lattice tart', 'blackcherrypie', 'black cherry lattice tart', 'Deep-filled pie bursting with juicy black cherries — sweet, tart, and perfect with a scoop of cream.')
             ON DUPLICATE KEY UPDATE 
             image='/images/blackcherrypie/200/cherry-pie-cooked.jpg', caption='black cherry lattice tart', imgTitle='black cherry lattice tart', description='Deep-filled pie bursting with juicy black cherries — sweet, tart, and perfect with a scoop of cream.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('puddings', '/images/chocolate-cake/200/chocolate-cake-01.webp', 'chocolate cake', 'chocolate-cake', 'chocolate cake with butter cream and fruit & nut chocolate bar topping', 'Decadent chocolate cake — rich, moist layers smothered in a smooth, dark ganache.')
             ON DUPLICATE KEY UPDATE 
             image='/images/chocolate-cake/200/chocolate-cake-01.webp', caption='chocolate cake', imgTitle='chocolate cake with butter cream and fruit & nut chocolate bar topping', description='Decadent chocolate cake — rich, moist layers smothered in a smooth, dark ganache.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('puddings', '/images/victoria-sponge-cake/200/victoria-sponge-slice.webp', 'victoria sponge cake', 'victoria-sponge-cake', 'a slice of victoria sponge cake', 'Light sponge sandwiched with jam and cream — a timeless British teatime favourite.')
             ON DUPLICATE KEY UPDATE 
             image='/images/victoria-sponge-cake/200/victoria-sponge-slice.webp', caption='victoria sponge cake', imgTitle='a slice of victoria sponge cake', description='Light sponge sandwiched with jam and cream — a timeless British teatime favourite.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('puddings', '/images/steamed-sponge-pudding/200/steamed-pudding-sliced.webp', 'steamed sponge pudding', 'steamed-sponge-pudding', 'sliced steamed sponge pudding with jam topping', 'Soft, warm sponge pudding — steamed to fluffy perfection and best served with lashings of custard.')
             ON DUPLICATE KEY UPDATE 
             image='/images/steamed-sponge-pudding/200/steamed-pudding-sliced.webp', caption='steamed sponge pudding', imgTitle='sliced steamed sponge pudding with jam topping', description='Soft, warm sponge pudding — steamed to fluffy perfection and best served with lashings of custard.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('puddings', '/images/damson-and-soured-cream-tart/200/damson-and-soured-cream-tart-plated-06.webp', 'damson & soured cream tart', 'damson-and-soured-cream-tart', 'a slice of damson and soured ceam tart on a plate', 'Sharp damsons balanced by creamy filling in a sweet tart shell — a refined and fruity treat.')
             ON DUPLICATE KEY UPDATE 
             image='/images/damson-and-soured-cream-tart/200/damson-and-soured-cream-tart-plated-06.webp', caption='damson & soured cream tart', imgTitle='a slice of damson and soured ceam tart on a plate', description='Sharp damsons balanced by creamy filling in a sweet tart shell — a refined and fruity treat.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('puddings', '/images/pear-coconut-blackberry-cake/200/pear-coconut-blackberry-cake-sliced-01.webp', 'Pear, Coconut & Blackberry Cake', 'pear-coconut-blackberry-cake', 'Pear, Coconut & Blackberry Cake Sliced', 'A moist and rustic cake packed with fruit and coconut — perfect with a mug of tea.')
             ON DUPLICATE KEY UPDATE 
             image='/images/pear-coconut-blackberry-cake/200/pear-coconut-blackberry-cake-sliced-01.webp', caption='Pear, Coconut & Blackberry Cake', imgTitle='Pear, Coconut & Blackberry Cake Sliced', description='A moist and rustic cake packed with fruit and coconut — perfect with a mug of tea.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('puddings', '/images/blackberry-and-soured-cream-flan/200/blackberry-and-soured-cream-flan-02.webp', 'Blackberry & Soured Cream Flan', 'blackberry-and-soured-cream-flan', 'Blackberry & Soured Cream Flan', 'Sweet pastry flan filled with tart blackberries and mellow soured cream — delicate and delicious.')
             ON DUPLICATE KEY UPDATE 
             image='/images/blackberry-and-soured-cream-flan/200/blackberry-and-soured-cream-flan-02.webp', caption='Blackberry & Soured Cream Flan', imgTitle='Blackberry & Soured Cream Flan', description='Sweet pastry flan filled with tart blackberries and mellow soured cream — delicate and delicious.';
INSERT INTO recipe_cards (category, image, caption, page, imgTitle, description) 
             VALUES ('puddings', '/images/fruit-cake/200/fruit-cake-sliced-02.webp', 'fruit cake', 'fruit-cake', 'Probably the best fruit cake in the world', 'Rich and moist traditional fruit cake — loaded with soaked dried fruit and festive cheer.')
             ON DUPLICATE KEY UPDATE 
             image='/images/fruit-cake/200/fruit-cake-sliced-02.webp', caption='fruit cake', imgTitle='Probably the best fruit cake in the world', description='Rich and moist traditional fruit cake — loaded with soaked dried fruit and festive cheer.';

    DELETE FROM recipe_cards 
    WHERE (category, page) NOT IN (
        ('sausages & bacon', 'sausagecasserole'),
        ('sausages & bacon', 'sausagepasta'),
        ('sausages & bacon', 'sausage-pasta-sauce'),
        ('sausages & bacon', 'sausagepepperpie'),
        ('sausages & bacon', 'sausageonionpie'),
        ('sausages & bacon', 'caulifrankcheese'),
        ('sausages & bacon', 'gammon-joint-with-mustard-sauce'),
        ('sausages & bacon', 'quiche-lorraine'),
        ('sausages & bacon', 'sausage-roll-and-caramalised-onion'),
        ('chicken', 'chickensoup'),
        ('chicken', 'chickenchilimex'),
        ('chicken', 'easy-chicken-curry'),
        ('chicken', 'chickenmushroompasta'),
        ('chicken', 'chickenlasagne'),
        ('chicken', 'sweet-and-sour-roast-chicken'),
        ('chicken', 'chickenvindaloo'),
        ('chicken', 'chicken-thighs-in-spicy-hot-sauce'),
        ('chicken', 'karahi-chicken-curry'),
        ('chicken', 'chickenmushroompie'),
        ('chicken', 'chicken-and-gammon-pie'),
        ('chicken', 'jerk-chicken'),
        ('chicken', 'spicy-masala-chicken'),
        ('chicken', 'jerked-chicken-curry'),
        ('chicken', 'chipotle-chicken-burrito'),
        ('chicken', 'tandoori-chicken'),
        ('chicken', 'chicken-with-mango'),
        ('chicken', 'chicken-in-cashew-nut-sauce'),
        ('chicken', 'chicken-tandoori-grill'),
        ('chicken', 'khara-masala-balti-chicken'),
        ('chicken', 'jerked-chicken-escalope-grill'),
        ('chicken', 'chinese-chicken-curry'),
        ('chicken', 'chicken-and-tomato-balti'),
        ('chicken', 'chicken-in-creamy-peppercorn-sauce'),
        ('chicken', 'butter-chicken'),
        ('chicken', 'chicken-tikka-grilled-escalope'),
        ('chicken', 'curry-leaf-masala-chicken-fry'),
        ('chicken', 'luxury-chicken-pie'),
        ('beef', 'cornedbeefmashpie'),
        ('beef', 'beefspinachcurry'),
        ('beef', 'beefporkpastasauce'),
        ('beef', 'beefporkchilli'),
        ('beef', 'beefporkpastabake'),
        ('beef', 'cottage-pie'),
        ('beef', 'beef-pork-madras'),
        ('beef', 'beefy-meatballs-onion-gravy'),
        ('beef', 'mums-braised-steak'),
        ('beef', 'beef-curry-with-green-beans'),
        ('beef', 'beef-and-mushroom-suet-pastry-pie'),
        ('beef', 'nuttys-braised-steak'),
        ('beef', 'authentic-seekh-kebabs'),
        ('beef', 'rogan-josh-beef-curry'),
        ('beef', 'steak-and-ale-pie'),
        ('beef', 'savoury-mince-and-mash'),
        ('beef', 'beef-stew-and-dumplings'),
        ('pork', 'pork-fried-rice'),
        ('pork', 'sweet-and-sour-pork'),
        ('pork', 'pork-vindaloo'),
        ('pork', 'roastporkvindaloo'),
        ('pork', 'pork-blackbean-sauce-and-peppers'),
        ('pork', 'pork-madras'),
        ('pork', 'bellyporkdinner'),
        ('pork', 'pork-chilli'),
        ('pork', 'roast-pork-stroganoff'),
        ('pork', 'porksupreme'),
        ('pork', 'jerked-pork-steaks-grill'),
        ('pork', 'peri-peri-pork-steaks'),
        ('pork', 'jerked-pork-curry'),
        ('pork', 'mediterranean-style-vegetables-with-pork-steaks'),
        ('pork', 'rogan-josh-pork-curry'),
        ('lamb', 'lamb-peas-mint-curry'),
        ('lamb', 'lambmashpie'),
        ('lamb', 'lamb-kofta-curry'),
        ('lamb', 'dodgy-kebab'),
        ('lamb', 'lamb-curry-with-spinach'),
        ('lamb', 'lamb-pulao-rice'),
        ('lamb', 'lamb-tikka-grill-steaks'),
        ('fish & veg', 'caulicheese'),
        ('fish & veg', 'vegetarian-chilli'),
        ('fish & veg', 'macaroni-pie'),
        ('fish & veg', 'cauli-cheese-smoked-haddock-bake'),
        ('fish & veg', 'aloo-gobi'),
        ('fish & veg', 'smoked-haddock-in-cheese-sauce'),
        ('fish & veg', 'fish-pie'),
        ('fish & veg', 'blue-cheese-macaroni-pie'),
        ('fish & veg', 'cheese-and-onion-quiche'),
        ('fish & veg', 'cauliflower-curry'),
        ('fish & veg', 'chorizo-cod-stew'),
        ('fish & veg', 'smoked-haddock-bacon-bake'),
        ('fish & veg', 'fish-and-chorizo-potato-pie'),
        ('fish & veg', 'fish-fillets-with-chilli-sauce'),
        ('fish & veg', 'sambar'),
        ('fish & veg', 'celeriac-soup'),
        ('sauce', 'whitesauce'),
        ('sauce', 'parsley-sauce'),
        ('sauce', 'onionsauce'),
        ('sauce', 'cheesesauce'),
        ('accompaniments', 'tomatomexicanrice'),
        ('accompaniments', 'chapati'),
        ('accompaniments', 'egg-fried-rice'),
        ('accompaniments', 'chinese-noodles-with-beansprouts'),
        ('accompaniments', 'basmati-rice'),
        ('accompaniments', 'dhal-with-fried-spices'),
        ('accompaniments', 'tarka-dhal'),
        ('accompaniments', 'mashed-roots'),
        ('accompaniments', 'spicy-potato-wedges'),
        ('accompaniments', 'tomato-chutney'),
        ('accompaniments', 'jamaican-rice-and-peas'),
        ('accompaniments', 'christmas-prepared'),
        ('accompaniments', 'spicy-baked-beans-and-peppers'),
        ('accompaniments', 'saffron-and-cardamom-rice'),
        ('accompaniments', 'fluffy-mashed-potatoes'),
        ('puddings', 'pineapplepudding'),
        ('puddings', 'pearalmondtart'),
        ('puddings', 'appleblackberrycrumble'),
        ('puddings', 'gingerbread'),
        ('puddings', 'blackcherrypie'),
        ('puddings', 'chocolate-cake'),
        ('puddings', 'victoria-sponge-cake'),
        ('puddings', 'steamed-sponge-pudding'),
        ('puddings', 'damson-and-soured-cream-tart'),
        ('puddings', 'pear-coconut-blackberry-cake'),
        ('puddings', 'blackberry-and-soured-cream-flan'),
        ('puddings', 'fruit-cake')
    );
