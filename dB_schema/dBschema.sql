DROP DATABASE IF EXISTS dB_schema;
CREATE DATABASE dB_schema;

USE dB_schema;

 CREATE TABLE products(
	id INT AUTO_INCREMENT PRIMARY KEY,
	product_name VARCHAR(100) NOT NULL,
	category VARCHAR(25) NOT NULL,
	prod_description VARCHAR(255) NOT NULL,
	img VARCHAR(255) NOT NULL
 );

CREATE TABLE price(
    id INT AUTO_INCREMENT PRIMARY KEY,
    price DECIMAL(10,2) NOT NULL,
    product_id INT NOT NULL
);

CREATE TABLE contacts(
    id INT AUTO_INCREMENT PRIMARY KEY,
    contact_name VARCHAR(255) NOT NULL,
    contact_address VARCHAR(255) NOT NULL,
    contact_email VARCHAR(25) NOT NULL,
    contact_number VARCHAR(25) NOT NULL,
    contact_message VARCHAR(225) NOT NULL
);



INSERT INTO products (product_name, category, prod_description, img)
VALUES("HUF Alameda Striped T-Shirt", "T-shirt", "This rad tee has a classic everyday construction, bold multicolor stripes all over, and an embroidered HUF logo at the left chest.", "https://www.pacsun.com/dw/image/v2/AAJE_PRD/on/demandware.static/-/Sites-pacsun_storefront_catalog/default/dwffe516c2/product_images/0097503380408NEW_00_054.jpg?sw=690&sh=1070&sm=fit"),
("Guess Script Long Sleeve T-Shirt", "T-shirt", "Exclusive! The Script Long Sleeve T-Shirt has a classic everyday construction and a retro-inspired brand graphic on the front.","https://static-buyma-jp.akamaized.net/imgdata/item/190726/0045755346/207615944/428.jpg"),
("Champion Reverse Weave Chenille Script Pullover Hoodie", "Hoodie", "Sport some signature Champion style this season with the Reverse Weave Chenille Script Pullover Hoodie. This go-to layer has a classic hoodie design with an embroidered Champion logo across the chest.","https://cdna.lystit.com/photos/champion/7afa470e/champion-Team-Red-Scarlet-Life-Reverse-Weave-Pullover-Hood-Chenille-Script-Logo.jpeg"),
("PacSun Light Stitch & Repair Stacked Skinny Jeans", "Jeans", "The Light Stitch & Repair Stacked Skinny Jeans have a traditional 5-pocket design, a versatile light wash, a long extended hem, ripped detailing with frayed edges, and our durable Comfort Stretch fabrication for everyday motion.", "https://img.shopstyle-cdn.com/sim/73/0b/730b3b14bcf6a2b1f6a89b062cace62e_xlarge/pacsun-pacsun-destroy-light-stacked-skinny-jeans.jpg"),
("Guess Pomona Stripe T-Shirt", "T-shirt", "This ultra-cool tee features short sleeves, crew neckline, logo embroidery at the chest, and a relaxed fit.", "https://www.pacsun.com/dw/image/v2/AAJE_PRD/on/demandware.static/-/Sites-pacsun_storefront_catalog/default/dw51af07ff/product_images/0702513380045NEW_01_108.jpg?sw=458&sh=710&sm=fit"),
("Adidas Adicolor Black Cropped Tank Top", "Top", "The Adicolor Black Cropped Tank Top by adidas is gym-ready whenever you are. It features a ribbed crew neckline, a sleeveless design, iconic 3-Stripes at the sides, small Trefoil embroidery at the chest, and a cropped fit.", "https://www.pacsun.com/dw/image/v2/AAJE_PRD/on/demandware.static/-/Sites-pacsun_storefront_catalog/default/dw7e497b03/product_images/0702000250229NEW_01_001.jpg?sw=690&sh=1070&sm=fit"),
("Valfre Estrella Turtleneck Bodysuit", "Suit", "Calling all cosmic girls. This black turtleneck bodysuit features a cosmic star pattern.", "https://www.pacsun.com/dw/image/v2/AAJE_PRD/on/demandware.static/-/Sites-pacsun_storefront_catalog/default/dw9740ffad/product_images/0712525050002NEW_00_001.jpg?sw=690&sh=1070&sm=fit"),
("John Galt Plaid Cara Skirt", "Skirt", "Complete your preppy style with the Plaid Cara Skirt by John Galt. Available in a plaid print, this mini skirt is complete with a high-rise fit, back zipper closure, and two front slits.", "https://www.pacsun.com/dw/image/v2/AAJE_PRD/on/demandware.static/-/Sites-pacsun_storefront_catalog/default/dwcf19cac7/product_images/0840454500080NEW_00_547.jpg?sw=690&sh=1070&sm=fit"),
("Civil Echos Tie-Dyed T-Shirt", "T-shirt", "Grab a fresh take on Civil's street-inspired style with the Echos Tie-Dyed T-Shirt. This new tee has a classic construction with reimagined brand graphics and a cool tie-dyed fabric", "https://www.pacsun.com/dw/image/v2/AAJE_PRD/on/demandware.static/-/Sites-pacsun_storefront_catalog/default/dwfae58d91/product_images/0097460120183NEW_00_673.jpg?sw=690&sh=1070&sm=fit"),
("Naruto T-Shirt", "T-shirt", "PacSun keeps the throwback vibes coming with the Naruto T-Shirt. This novelty tee has a crew neck, short sleeves, and Naruto graphics on the front and back.", "https://www.pacsun.com/dw/image/v2/AAJE_PRD/on/demandware.static/-/Sites-pacsun_storefront_catalog/default/dwef65c45d/product_images/0097432810077NEW_00_001.jpg?sw=690&sh=1070&sm=fit"),
("Air Jordan 1 Retro High OG Bred", "Shoes", "Leather upper with the legendary Air Jordan wings logo on the side. Padded collar for extra comfort.", "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcTbLQQt7AKnQUoXHvw3Mrnnt862dFxlUUIrgetWZ5PBzIIddGSHHIhm5h98urA7p6TbPNoYFJ3QvEqznQmnnznHDjyyPIX0mUfZAkYctGN0fzRVPG-nSxGgGg&usqp=CAE"),
("Air Jordan 1 Retro High OG 'Shadow' 2018", "Shoes", "Leather upper with padded collar for comfort. EVA midsole for cushioning. Encapsulated Air-Sole unit in the heel. Solid rubber cupsole with deep flex groves, concentric traction pattern.", "https://www.flightclub.com/media/catalog/product/cache/1/image/1600x1140/9df78eab33525d08d6e5fb8d27136e95/8/0/803598_01.jpg"),
("Vans White Old Skool Shoes", "Shoes", "Showcase Vans' signature style on your deck with the Old Skool Shoes. These sweet sneakers have a sturdy canvas upper, reinforced toecaps to withstand repeated wear, and the brand's signature rubber waffle outsole.", "https://www.pacsun.com/dw/image/v2/AAJE_PRD/on/demandware.static/-/Sites-pacsun_storefront_catalog/default/dwa5d1f88d/product_images/0530037910212NEW_00_010.jpg?sw=690&sh=1070&sm=fit"),
("The North Face Blue & Black Base Camp II Slide Sandals", "Shoes", "The Blue & Black Base Camp II Slide Sandals have contoured footbeds, textured outsoles, and a thick single strap with bold The North Face branding.", "https://www.pacsun.com/dw/image/v2/AAJE_PRD/on/demandware.static/-/Sites-pacsun_storefront_catalog/default/dw4a613ee6/product_images/0518519500002NEW_00_863.jpg?sw=690&sh=1070&sm=fit"),
("Bape BackPack", "Accessories", "Authentic Bape Backpack", "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1559833549-patek-philippe-grand-complications-silver-dial-18k-rose-gold-1559833533.jpg?crop=0.7333333333333334xw:1xh;center,top&resize=480:*"),
("PATEK PHILIPPE GRAND COMPLICATIONS 41MM, 18K ROSE GOLD AND ALLIGATOR", "Accessories", "This manually-wound watch features day, month, leap year and day or night indicators as well as a seconds subdial.", "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1559833549-patek-philippe-grand-complications-silver-dial-18k-rose-gold-1559833533.jpg?crop=0.7333333333333334xw:1xh;center,top&resize=480:*"),
("Blaze Clubmaster Lens-Over-Frame Sunglasses, Black/Gold", "Accessories", "High on style, Ray-Ban sunglasses are also lauded for impressive quality and sun protection.", "https://a248.e.akamai.net/f/248/9086/1.ccd/origin-d3.scene7.com/is/image/LuxotticaRetail/805289653653_shad_qt?$pngAlpha$"),
("Kermit Supreme Skateboard", "Skateboard", "The Kermit T-shirt is one of the brand’s most sought-after celebrity tees, so it makes sense that the matching board has become one of Supreme’s best.","https://static.highsnobiety.com/thumbor/85xfd0GhUNBoClNge3ZZYjrzbWk=/fit-in/800x1001/smart/static.highsnobiety.com/wp-content/uploads/2018/04/30111809/supreme-skateboard-decks-9.jpg"),
("APO Selekta 156cm Snowboard", "Snowboard", "A freestyle jib monster thanks to a new lightweight Fusion Laminates construction with a PH Bounce Core for lightweight and flexible pop.", "https://scene7.zumiez.com/is/image/zumiez/pdp_hero/APO-Selekta-156cm-Snowboard-_233153-front.jpg");

SELECT * FROM products;

INSERT INTO price (price, product_id)
VALUES (35, 1), (44, 2), (65, 3), (59.95, 4), (27.30, 5), (21.00, 6), (42, 7), (26, 8), (32, 9), (17.50, 10), (240, 11), 
(225, 12), (60, 13), (35, 14), (130, 15), (349, 16), (173, 17), (250, 18), (279.99, 19);

SELECT * FROM price;

INSERT INTO contacts (contact_name, contact_address, contact_email, contact_number, contact_message)
VALUES ("Ana Moore", "324 Peachtree Road", "AMoore@gmail.com", "894-424-0984", "Great company, very friendly"),
("Mac Smith", "9039 Singleton Street", "MacSmith89@yahoo.com", "980-576-3496", "Responds on time, and very friendly"),
("Sam Smith", "123 Littletop Road", "SmithS@gmail.com", "546-385-2984", "Fast delivery!"),
("Cam Bright", "890 Whitewater Lane", "CamBright@gmail.com", "343-598-2457", "I wish I had the Pro Plan!!"),
("Amy Play", "246 Applebottoms Lane", "AmyPlay@yahoo.com", "907-386-2848", "Nice and Friendly"),
("Cameron Right", "975 Sunset Road", "CamR@gmail.com", "957-492-7392", "Awesome people to work with"),
("Jay Ray", "567 Albermare Road", "JayRay98@gmail.com", "293-792-2903", "Awesome timing!"),
("Jamie Wright", "324 Morehouse Street", "JamieW@yahoo.com", "834-903-4964", "Got my package 2 days late"),
("Quin Downey", "2704 AntHill Lane", "QuinDowney@gmail.com", "704-934-9037", "Great timing, package arrived early!"),
("Owen Say", "9023 Sugarcrane Lane", "OwenS90@yahoo.com", "893-389-2839", "I love the environment");


SELECT * FROM contacts;