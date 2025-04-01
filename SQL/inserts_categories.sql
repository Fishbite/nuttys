CREATE TABLE IF NOT EXISTS category_cards (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    description TEXT NOT NULL
);
INSERT INTO category_cards (name, description) VALUES ('a test modified', 'Such a versatile & in-expensive ingredient. I tend to use pork Cumberland or
      Lincolnshire, but please feel free to experiment with vegetarian or chicken
      sausages. With one exception, sausage & onion pie, I think that really needs
      pork sausage meat.')
      ON DUPLICATE KEY UPDATE description='Such a versatile & in-expensive ingredient. I tend to use pork Cumberland or
      Lincolnshire, but please feel free to experiment with vegetarian or chicken
      sausages. With one exception, sausage & onion pie, I think that really needs
      pork sausage meat.';
INSERT INTO category_cards (name, description) VALUES ('sausages & bacon', 'Such a versatile & in-expensive ingredient. I tend to use pork Cumberland or
      Lincolnshire, but please feel free to experiment with vegetarian or chicken
      sausages. With one exception, sausage & onion pie, I think that really needs
      pork sausage meat.')
      ON DUPLICATE KEY UPDATE description='Such a versatile & in-expensive ingredient. I tend to use pork Cumberland or
      Lincolnshire, but please feel free to experiment with vegetarian or chicken
      sausages. With one exception, sausage & onion pie, I think that really needs
      pork sausage meat.';
INSERT INTO category_cards (name, description) VALUES ('chicken', 'While contemplating cost, large packs of chicken thighs are excellent. Being time concious, if boneless chicken is required, I''ve bought it that way. If using chicken breast, cooking times will need to be reduced, so the chicken does not dry out while cooking.')
      ON DUPLICATE KEY UPDATE description='While contemplating cost, large packs of chicken thighs are excellent. Being time concious, if boneless chicken is required, I''ve bought it that way. If using chicken breast, cooking times will need to be reduced, so the chicken does not dry out while cooking.';
INSERT INTO category_cards (name, description) VALUES ('beef', 'Buying beef is more complicated as cheaper cuts require longer cooking times or need pressure cooking. Try my corned beef mash pie, beef & pasta sauce dishes or, my beef & spinach curry is a nice delicate dish if you fancy a little spice!')
      ON DUPLICATE KEY UPDATE description='Buying beef is more complicated as cheaper cuts require longer cooking times or need pressure cooking. Try my corned beef mash pie, beef & pasta sauce dishes or, my beef & spinach curry is a nice delicate dish if you fancy a little spice!';
INSERT INTO category_cards (name, description) VALUES ('pork', 'I tend to go for a shoulder cut, it has more fat, which keeps it moist, melt in your mouth tasty in any dish. Left over roast pork is particularly delicious as you have all those wonderful umami meatiness flavours baked right into the meat before you start. See sausage & bacon for my gammon recipes.')
      ON DUPLICATE KEY UPDATE description='I tend to go for a shoulder cut, it has more fat, which keeps it moist, melt in your mouth tasty in any dish. Left over roast pork is particularly delicious as you have all those wonderful umami meatiness flavours baked right into the meat before you start. See sausage & bacon for my gammon recipes.';
INSERT INTO category_cards (name, description) VALUES ('lamb', 'Lamb  dishes, now we''re talking..... From fragrant curries to warming stews, Sunday roasts to rich ragus. Lamb is a fabulous ingredient, higher in cost than other meats, but oh! so worth it every now and again!')
      ON DUPLICATE KEY UPDATE description='Lamb  dishes, now we''re talking..... From fragrant curries to warming stews, Sunday roasts to rich ragus. Lamb is a fabulous ingredient, higher in cost than other meats, but oh! so worth it every now and again!';
INSERT INTO category_cards (name, description) VALUES ('fish & veg', 'Vegetables! ...as you might have noticed, feature heavily in my recipies, hiding in amongst lots of meat. Here they are the star! You can try them on a "veg hater" and I wish you luck with that :¬) But, healthwise, we should eat more, it''s a fact. And, as a replacement for meat, you can''t go wrong with a bit of fish!')
      ON DUPLICATE KEY UPDATE description='Vegetables! ...as you might have noticed, feature heavily in my recipies, hiding in amongst lots of meat. Here they are the star! You can try them on a "veg hater" and I wish you luck with that :¬) But, healthwise, we should eat more, it''s a fact. And, as a replacement for meat, you can''t go wrong with a bit of fish!';
INSERT INTO category_cards (name, description) VALUES ('sauce', 'A good sauce is what elevates a dish to the next level of wonderful and these sauces are used throughout my recipies. For now here''s a couple to get us going, without a jar, sachet, chemical additive or flavouring in sight.')
      ON DUPLICATE KEY UPDATE description='A good sauce is what elevates a dish to the next level of wonderful and these sauces are used throughout my recipies. For now here''s a couple to get us going, without a jar, sachet, chemical additive or flavouring in sight.';
INSERT INTO category_cards (name, description) VALUES ('accompaniments', 'What do I serve with the main star of my dish? Indian dishes cry out for flat breads, Chinese dishes needle for noodles, sausage and - has to be mash! So, every time I make a dish that really benefits from a specific side - I''ll try and put it in here. Do shout out if you would like me to put something here.')
      ON DUPLICATE KEY UPDATE description='What do I serve with the main star of my dish? Indian dishes cry out for flat breads, Chinese dishes needle for noodles, sausage and - has to be mash! So, every time I make a dish that really benefits from a specific side - I''ll try and put it in here. Do shout out if you would like me to put something here.';
INSERT INTO category_cards (name, description) VALUES ('puddings', 'Num num num! Time to polish off that meal, just to make sure everyone''s had enough to eat :¬P')
      ON DUPLICATE KEY UPDATE description='Num num num! Time to polish off that meal, just to make sure everyone''s had enough to eat :¬P';