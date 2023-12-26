-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2023 at 04:17 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dafo`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_cart`
--

CREATE TABLE `app_cart` (
  `id` bigint(20) NOT NULL,
  `count` int(10) UNSIGNED NOT NULL CHECK (`count` >= 0),
  `time` datetime(6) NOT NULL,
  `price` double NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app_category`
--

CREATE TABLE `app_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_category`
--

INSERT INTO `app_category` (`id`, `name`) VALUES
(1, 'Snack Foods'),
(2, 'Supplement Snacks'),
(3, 'スイーツギフト'),
(4, 'Candy & Chocolate Bars'),
(5, 'Dagashi'),
(6, 'Chocolate Candy'),
(7, 'スイーツギフト_'),
(8, 'Dripbag Coffee'),
(9, 'Instant Coffee'),
(10, 'Rooibos'),
(11, 'Chinese Tea'),
(12, 'Roasted Coffee Beans'),
(13, 'Whiskey & Scotch'),
(14, 'Junmai Daiginjo-shu'),
(15, 'Liqueurs'),
(16, 'Beer'),
(17, 'Cocktail Mixers'),
(18, 'Korui Shochu'),
(19, 'Sweet Potato Shochu'),
(20, 'White'),
(21, 'Retort Cooked Rice'),
(22, 'Mochi'),
(23, 'Millet & Wild Rice'),
(24, 'Barley'),
(25, 'Lamb'),
(26, 'Sausages'),
(27, 'Ham'),
(28, 'Pork'),
(29, 'Beef'),
(30, 'Spiced Meat'),
(31, 'Salted Fish & Local Seafood Delicacies'),
(32, 'Shirasu Whitebait & Dried Young Sardines'),
(33, 'Dried & Smoked Fish'),
(34, 'Caviars & Roes'),
(35, 'Canned & Jarred Fish'),
(36, 'Seaweed'),
(37, 'Corn'),
(38, 'Daikon'),
(39, 'Lettuce'),
(40, 'Cabbage'),
(41, 'Mixed Vegetables & Stir Fry'),
(42, 'Citrus Fruits'),
(43, 'Dried Fruits'),
(44, 'Takuan'),
(45, 'Shoyu Zuke'),
(46, 'Meat Tsukudani'),
(47, 'Hard Candy'),
(48, 'Menma & Zha Cai'),
(49, 'food-beverage'),
(50, 'Seaweed Tsukudani'),
(51, 'Ice Cream'),
(52, 'Meals & Entrees'),
(53, 'Pasta & Sauces'),
(54, 'Lunch Sets'),
(55, 'Dried Vegetables'),
(56, 'Syrups'),
(57, 'Craft Beer'),
(58, 'alcohol'),
(59, 'home'),
(60, 'Wall & Tabletop Frames'),
(61, 'kitchen'),
(62, 'Toilet Brushes & Holders'),
(63, 'Mold & Mildew Removers'),
(64, 'Heat Patches'),
(65, 'Cloth Face Masks'),
(66, 'Adhesive Bandages'),
(67, 'Condoms'),
(68, 'hpc'),
(69, 'Procedure Masks'),
(70, 'パントリー スキンケア・ボディケア'),
(71, 'Creams'),
(72, 'Active Dry Yeasts'),
(73, 'Chocolates'),
(74, 'Wheat Flours & Meals'),
(75, 'Food Coloring'),
(76, 'Flavoring Syrup'),
(77, 'Cocoa'),
(78, 'Natural'),
(79, 'Dessert Mixes'),
(80, 'Powdered'),
(81, 'Lactobacillus'),
(82, '健康食品'),
(83, 'Exercise Mats'),
(84, 'sporting-goods'),
(85, 'Jump Ropes'),
(86, 'Carpet & Carpet Tiles'),
(87, 'Cookies'),
(88, 'diy'),
(89, 'toys');

-- --------------------------------------------------------

--
-- Table structure for table `app_deliveryinfo`
--

CREATE TABLE `app_deliveryinfo` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app_order`
--

CREATE TABLE `app_order` (
  `id` bigint(20) NOT NULL,
  `price` double NOT NULL,
  `time` datetime(6) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `ship_fee` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_order`
--

INSERT INTO `app_order` (`id`, `price`, `time`, `user_id`, `ship_fee`) VALUES
(1, 0, '2023-12-26 14:27:23.773547', 3, 0),
(2, 0, '2023-12-26 14:27:26.022781', 3, 0),
(3, 0, '2023-12-26 14:27:26.254170', 3, 0),
(4, 0, '2023-12-26 14:49:32.731317', 3, 0),
(5, 0, '2023-12-26 14:49:35.483329', 3, 0),
(6, 0, '2023-12-26 14:49:38.477875', 3, 0),
(7, 0, '2023-12-26 14:49:38.665653', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `app_orderdetail`
--

CREATE TABLE `app_orderdetail` (
  `id` bigint(20) NOT NULL,
  `count` int(10) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `app_product`
--

CREATE TABLE `app_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `average_rating` double NOT NULL,
  `price` double NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `supplier_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_product`
--

INSERT INTO `app_product` (`id`, `name`, `content`, `average_rating`, `price`, `category_id`, `supplier_id`) VALUES
(1, 'EC Limited Jagarico Assorted Set, Salad and Cheese, 12 Pieces', 'Product Description This is an E-commerce limited edition Calbee Jagarico assorted set. A set of 6 cheddar and camembert cheese that seems to be delicious with carrot and parsley crushes. The classic salad flavor is mixed with cheddar and camemberle cheese. You can enjoy the richness of cheese and mild aftertaste. Assortment for 2 flavors [Potato Salad] Per 1 cup 2.3 oz (60 g) (Energy: 299 kcal), Protein: 4.3 g, Fats: 14.4 g, Carbohydrates: 38.1 g, Salt Equivalent: 0.8 g; [Jagarico Cheeseese]: 1 cup (Energy: 291 kcal, Protein: 4.8 g, Fat: 1 kcal. 4.5g, Charcoal Water hydrates: 1.3 oz (35.4 g), Salt equivalent: 0.03 oz (0.7 g). Ingredients Potato Salad: Potatoes (not genetically modified), vegetable oil, dried potato (not genetically modified), powdered skim milk, powdered vegetable oil, milk etc., salt, dried carrots, parsley, pepper/emulsifier (including soybeans), seasoning (amino acids, etc.), antioxidants (V.C), flavoring. Koshiya. GMO (non-GMO), vegetable oil, dried potato (non-GMO), cheddar cheese, cheese sauce, whey powder, powdered vegetable oil, salt, white pepper, camembert cheese powder / emulsifier (including soybeans), seasoning (amino acids, etc.), carotenoid pigment, fragrance, calcium hydroxide, antioxidant (V.C)', 4.5, 2, 1, 1),
(2, 'Calbee Seaweed & Salt Potato Chips', 'Product Description Fluffy and fluffy \"Potato Chips Norishio\" with a fluffy fragrance. The rich blue glue matches the simple salty flavor to further enhance the potatoes. In addition, we use firmly roasted sesame oil and chili peppers to enhance the taste of blue. It leaves a crisp taste and a pleasant taste. Enjoy crisp, natural potato chips that slice the high-quality potatoes as is, and enjoy a fresh and crisp texture. Calbee has been making potatoes with contract producers and two people tripods to deliver delicious potato chips to everyone. Contract producers love to live in their deliciousness. With a full potato profile, we offer information from horse potato producers and manufacturing factories! In order to ensure that you can enjoy Calbee products with peace of mind by entering the data on the product packaging (part of the potato chips), you can easily find information such as potato producers, horse potato production regions and production factories. Legal Disclaimer Do not store in places exposed to direct sunlight, high temperatures and humidity. Please be careful not to cut your hand on the opening when opening. Consume as soon as possible after opening. This product is manufactured in a common facility with products that include eggs, milk, wheat, shrimp, and crab. This product is fried with palm oil and rice oil. The blue glue used for this product is harvested using a fishing method that is mixed with marvel', 4.3, 2, 1, 2),
(3, 'Ezaki Glico Balance-on Mini Cake Chocolate Brownie, 20 pieces', 'Product Description In addition to your usual diet, the nutrients that tend to be lacked easily to take a balanced diet. Compact size makes it easy to carry. It can also be stored in your office desk easily. A moist mini cake type that is easy to eat. 1 bag contains 10 types of vitamins, calcium, magnesium, and iron for 1/3 days. Chocolate Brownie Flavor Ingredients Allergens included in the raw materials: Egg, milk, wheat, soy Safety Warning Consume as soon as possible after opening', 4, 1, 2, 3),
(4, 'Lindt Lindt Chocolate Present, Lindor Tasting Set, Pick & Mix, 15 Types, 20 Pieces, Individual Packaging, Present, Handbag Included, Shopping Bag S Included', 'Product description Ingredients Ingredients: Sugar, vegetable oil, core butter, whole milk powder, cacao mass, lactose, skim powdered milk, butter oil, caramel, low fat cocoa, milk processing, hazelnut, malt extract, pistachio paste, salt, strawberry powder, blood orange powder, matcha powder, caramel powder, blood orange extract, vanilla beans, salt powder/vegetable lecithin, fragrance, coloring. (Red Beat Color) )', 4.4, 2, 3, 4),
(5, 'Meiji Chocolate Kouka Chocolate Bars, Cacao 72%, Large Box, 2.2 lbs (1 kg)', 'Product Description - Authentic bitter chocolate with 72% cacao- Features the gorgeous aroma and richness of cacao and a high-quality bitter taste.- Do you know? Estimated polyphenol daily intake: In general, it is said an appropriate amount is 200 kcal per day between meals (Ministry of Health, Labor and Welfare). So if you want to eat healthily and enjoy it, please try 3 or 5 pieces each day (about 84 kcal ~ about 141 kcal).- For those who think it tastes too strong or bitter at first, it is recommended to start from 2 pieces and get used to it little by little. - As additional information, 1 bar of Chocolate Kouka 72% contains 127 mg, and 5 bars contain 635 mg of cacao polyphenol. *Over consumption is not recommended. Ingredients Cacao mass, sugar, cocoa powder, cocoa butter, vegetable fats and fats, reduced sugar syrup, emulsifier, fragrance, gloss agent (some contain dairy ingredients and soy)', 4.5, 3, 4, 5),
(6, 'UHA Mikakuto Rainbow Ramune Mini Bag, 1.1 oz (30 g) x 6 Bags', 'Rainbow Lamune is also known as the \"Fantasy Ramne\" due to the difficulty of purchase. By collaboration with Ikoma Corporation Hompo, the rainbow ramune has been recreated with the mouth and texture of the rainbow ramune, creating a product that is popular with its small and colorful cute. The rustic taste and good mouth of the Rainbow Lamune from the Icoma Confectionery Headshop is made with a small and colorful lamune that is fun to see.', 4, 1, 5, 6),
(7, 'Tyrol Chocolate, 105 Tablets Set', 'The popular Tyrol Chocolate. This variety set includes coffee nougar, milk, screws, white & cookies, strawberry jelly, and more.', 4.3, 2, 6, 7),
(8, 'YOKUMOKU New Year\'s Day Gift, Christmas Gift, Confectionery, Present, Western Confectionery, Individual Packaging, Holiday Season, Assorted, 46 Pieces', 'Christmas Exclusive Assortment \"Holiday Season Assortment\" A limited edition Christmas assortment of Yock Moc designs that appeared every year. Illustrations drawn by French female artist Cive, enlighten the sacred day. This year features a fun Christmas preparation in the village square. A luxurious assortment of 5 different delicious tastes that are popular with yock moc, including the classic Cigar and baked goods that can only be enjoyed this season. It can be used as a Christmas gift, or share with family and friends, so you can enjoy it as a smile on the ring. There is a hidden year in the image, so it can be used as a treasure chest for memories. The theme of the package is \"Christmas in the Village\" - At Eve night, children get together in the square and have fun preparing for Christmas with songs and cakes. What happens in the sky?', 4.3, 5, 3, 8),
(9, 'Otsuka Pharmaceutical Calorie Mate Blocks, Chocolate, 4 Bottles x 10 Packs', 'Product Description A balanced nutrition that can easily replenish 11 types of vitamins, 5 different minerals, proteins, fats, and sugars. 1 piece contains 4 pieces of 100 kcal. Contains approximately half the amount of vitamins needed for a day. (*The amount required for a day is based on the 2015 indicated nutrients, etc.); We take care of the European aromatic chocolate sensation, and have been finished so that you can enjoy the afternoon after eating. Ingredients Flour (made in Japan), chocolate spread, sugar, egg, almond, powdered skim milk, soy protein, wheat protein, salt, starch/sodium caseine, processed starch, flavoring allergens (within 28 items) wheat, egg, dairy ingredient, almond, soybean Legal Disclaimer Storage: Avoid high temperature See more', 4.5, 2, 2, 9),
(10, 'Snack Company Baby Star Butamen Tonkotsu Flavor, 1.2 oz (35 g) x 15 Packs', 'Product Description A classic mini cup ramen, butamen kotsu. Butamen was first released in 1993. The carefully selected pork bone soup will make your appetite. The mini size is perfect for when you are a little hungry or snacks, or lunch companion. Can be enjoyed by a wide range of people from children to adults. Ingredients Fried noodles (flour (made in Japan), vegetable oil, salt, soy sauce, sugar, hydrolyze, pork extract, egg white, pork extract powder), powdered soup (pork extract powder, salt, vegetable oil, dextrin, glucose, sesame, spices, powdered soy sauce, refined processed oil, lactose, chicken powder, flavoring oil). Processed starch, seasoning (amino acids, etc.), barrel, emulsifier, flavoring, spice extract, glue (guergum), acidulant, antioxidant (vitamin E), vitamin Buc, caramel coloring, (some parts include wheat, egg, dairy ingredients, sesame, soy, chicken, pork, gelatin). *This product manufacturing facilities produce products containing shrimp, mack, soy, soy, soy, soy, soy, soy, soy, peanuta', 4.3, 1, 1, 10),
(11, 'Colomban Merveil 54 Count', 'Product Description   A cookie made of smooth chocolate cream sanded with a buttery flavored Langdosha fabric. Available in 3 flavors: vanilla fabric and sweet chocolate, vanilla fabric and milk chocolate, coffee fabric and coffee cream. Cookies are popular with everyone from kids to the elderly. Enjoy a graceful encounter with light mouth cookies.   Legal Disclaimer   If \"Ships by Amazon.co.jp\", it will be [Without a shopping bag]', 4.4, 2, 7, 11),
(12, 'Doutor Coffee Drip Pack, Variety Sort, Enjoy the Scent, 40P', 'Product Description   This is a personal drip coffee that allows you to easily enjoy a full cup of regular coffee. A variety pack that you can enjoy fragrance with a variety of 4 assorted varieties that include a mellow blend, scented, mocha blend, and Kilimanjaro blend. Set it in a cup and enjoy the rich fragrance that spreads from the moment you pour hot water. There may be cases where the exterior design may differ for a limited time.   Ingredients   coffee beans', 4.2, 1, 8, 12),
(13, 'Nescafe Gold Blend Decaffeinated Coffee Powder 2.8 oz (80 g)', 'Product Description   Nescafe Gold Blend Caffeine-less is a \"regular soluble coffee\" that envelops the grains of finely ground roasted coffee beans to achieve a freshly brewed fragrance and mild taste. When you are done drinking, the grain appears at the bottom of the cup is a proof of quality assurance. Gold Blend: Cuts caffeine by 97% using a unique manufacturing method that uses only natural water to maintain the high quality scent and mild taste. This is a gentle coffee for those who want to drink coffee, but are concerned about caffeine induction. The new Nescafe Gold Blend Caffeinated Dress has been baked to match the characteristic of the beans using the roasting process. This carefully roasted blend makes each beans more unique and has a better fragrance for each cup of coffee. Enjoy the Nescafe Gold Blend Caffeinated Results that cut 97% of caffeine without the taste of \"Nescafe Gold Blend\".   Ingredients   Coffee Beans (Imported)', 4.4, 1, 9, 13),
(14, 'Nescafe Gold Blend 4.2 oz (120 g) [Soluble Coffee] [60 Cups] [Bottle]', 'Product Description   Nescafe Gold Blend is a \"Regular Soluble Coffee\" that envelops the grounds of finely ground roasted coffee beans to achieve a high quality aroma and the original taste of coffee and a clear aftertaste. When you are done drinking, the grain appears at the bottom of the cup is a proof of quality assurance. This new Nescafe Gold Blend, is baked to match the characteristic of the beans using the roasting process. This carefully roasted blend makes each beans more unique and has a better fragrance for each cup of coffee. To pursue the original aroma and taste of coffee beans, enjoy the refined and mild and deep taste and the rich fragrance of the coffee.   Ingredients   Coffee Beans (Imported)', 4.4, 1, 9, 13),
(15, 'Doutor Coffee DT Instant S Black AG 0.08 oz (2 g) x 100P', 'Product Description   Instant coffee sticks that can be consumed easily and easily eaten one cup at a time. Enjoy the aromatic taste of the flavor. Hot: Place 1 cup (1 bottle) in the cup, pour hot water and stir well, and you re done. Ice: Place 1 cup (1 bottle) in the glass, pour water or milk of milk and stir well.   Ingredients   coffee beans', 4.1, 1, 9, 12),
(16, '伊藤園 ヘルシールイボスティー ティーバッグ 2.0g×100袋 お得用', 'Product Description: This tea bag is made with 100% Rooibos tea leaves produced exclusively in the Sedarberg Mountains in South Africa. For cold brew and hot water draining. It goes well with dark meals and features a refreshing and refreshing aftertaste. The caffeine is zero, so it is gentle on the body and always safe. This is a infant standard food. Ingredients: Louibos, South Africa', 4.5, 1464, 10, 14),
(17, 'Nescafe Gold Blend Sticks, Black, 80 Sticks [Soluble Coffee]', 'Product Description: Nescafe Gold Blend is a \"regular soluble coffee\" that envelops the grounds of finely ground roasted coffee beans to achieve a high quality aroma and the original taste of coffee and a clear aftertaste. When you are done drinking, the grain appears at the bottom of the cup is a proof of quality assurance. This new Nescafe Gold Blend, is baked to match the characteristic of the beans using the roasting process. This carefully roasted blend makes each beans more unique and has a better fragrance for each cup of coffee. To pursue the original aroma and taste of coffee beans, enjoy the refined and mild and deep taste and the rich fragrance of the coffee. The stick type makes it easy to carry and enjoy coffee on the go. Individually packaged, so you can always use it as fresh as you like. Raw Materials/Composition: Coffee beans (import) Ingredients: Coffee Beans (Imported)', 4.4, 1807, 9, 13),
(18, '[Large Capacity] Nescafe Gold Blend 100 Sticks Coffee Bottles (Cafe Latte)', 'Product Description: Nescafe Gold Blend is a \"Regular Soluble Coffee\" that envelops the grounds of finely ground roasted coffee beans to achieve the elegant aroma of freshly brewed and the original taste of coffee. When you are done drinking, the grain appears at the bottom of the cup is a proof of quality assurance. Enjoy a cup of coffee with a mix of creamer and sweetness with a polished mild, rich taste and an overflowing fragrance base. Ingredients: Corn syrup (made in Japan), coffee, vegetable oil, casein, salt, milk etc. / pH regulator, emulsifier, sweetener (acesulfame K, sucrose)', 4.4, 2639, 9, 15),
(19, 'Jasmine Tea Itoen One Pot Relax Jasmine Tea Bag 0.1 oz (3.0 g) x 100 Bags Value Eco Tea Bag', 'Product Description: Relaxed Jasmine Tea large capacity with plenty of tea bags. 100 Tea Bags The refreshing taste of green tea is scented with fresh jasmine flowers. For cold and hot water draining. Made with a non-woven tea bag with excellent extraction, making it easy to brew cold water. Enjoy a refreshing and pleasant fragrance that spreads into your mouth. Ingredients: Jasmine Tea, People\'s Republic of China', 4.5, 1342, 11, 16),
(20, 'Nescafé Gold Blend Eco-friendly & System Pack, 3.4 oz (95g)', 'Product Description: Product Introduction: \"Nescafé Gold Blend\" is a \"regular soluble coffee\" that achieves the high-quality aroma of freshly brewed coffee, the original taste of coffee, and a clear aftertaste without any off-flavors, by encapsulating finely ground roasted coffee beans.The grains left in the bottom of your cup after you finish drinking are proof of the high quality. The newly introduced \"Nescafé Gold Blend\" is roasted separately according to the individuality of the beans during the roasting process.Through this meticulous roasting and blending process, the individual characteristics of each bean resonate even more with one another, realizing an even more exquisite aroma in every cup of coffee.The Eco-friendly & System Pack is a refill product that achieves zero aluminum foil usage and a significant reduction in plastic usage. It\'s easy to refill and can be easily compressed after use.Please enjoy the natural aroma and flavor of the coffee beans, with a refined mild yet deep taste, and an abundant exquisite aroma. Ingredients & Components: Coffee beans (imported) Ingredients: Coffee Beans (Imported)', 4.3, 1100, 9, 13),
(21, 'Doutor Coffee Drip Pack, Dark Roast Blend', 'Product Description: This is a personal drip coffee that allows you to easily enjoy a full cup of regular coffee. This is a blend of coffee beans produced in Vietnam, Colombia, and carefully baked coffee beans. It has a deep roasted scent and a rich taste. Set it in a cup and enjoy the rich fragrance that spreads from the moment you pour hot water. Ingredients: coffee beans', 4.2, 3700, 8, 12),
(22, 'Doutor Coffee Drip Pack, Mellow Blend, Pack of 100', 'Product Description: This is a personal drip coffee that allows you to easily enjoy a cup of regular coffee.The coffee is made from a blend of coffee beans, mainly from Vietnam and Brazil, that are carefully and slowly roasted. We focused on the balance of sweetness, acidity, and bitterness to create a smooth, mellow taste that you won\'t get tired of drinking every day.Place it in a cup and enjoy the rich fragrance that spreads from the moment you pour hot water. Ingredients: coffee beans', 4.2, 2980, 8, 12),
(23, 'AGF Blendy Stick Cafe au Lait Yasuragi no Caffeinated 20 Bottles [Caffeinated Coffee] [Stick Coffee]', '\"Café Ore is a good choice. Blendy This popular instant stick series has a creamy and sweet taste that can be easily enjoyed in a mug size with a single stick. AGF \"Blendy\" Stick, Café Ausé, 20 Serene Caffeine-less Bottles Uses 93% Caffeine Cut Coffee. This caffeine-less café oleft-in size is large enough to blend with milk and a peaceful experience. Each cup is always fresh. Café Ale is made with a special mixer for the best balance of coffee, milk and sugar for caffeine-less use. A stick coffee that is always tasteful. Sweetness Level 3 (AGF Blendy Stick Caféolet) Experience the difference between café oles made with regular caffeinated instant coffee. This caffeine-less coffee is recommended for those who are concerned about caffeine and refrain from coffee during breastfeeding or maternity to sleep or going out. Fill one stick with half of your usual hot water and ice for an ice caffeole. Ingredients: Creaming powder (including dairy ingredients) (made in Japan), instant coffee, sugar / pH regulator, milk protein, fragrance (derived from milk), caramel pigment, emulsifier, sweetener (aspartame, L-phenylalanine compound, acesulfame K), seasoning (amino acids, etc.), silicon oxide', 4.4, 812, 9, 17),
(24, 'UCC Gold Special Blend Coffee Beans (Powder) 33.5 oz (1000 g)', 'Product Description: Blends to deepen and retain deliciousness. Sweet fragrance and flavorful moths A large bag type that can be used to prevent any problems. Ingredients: Contents: Coffee beans 2.2 lbs (1 kg) (33.5 oz (1,000 g); Ingredients: Coffee beans (raw beans from Brazil, Colombia, etc.) Legal Disclaimer: Avoid direct sunlight, high temperature and humidity. After opening, store sealed and consume as soon as possible', 4.2, 1935, 12, 18),
(25, 'Single Malt Whiskey The Macallan 12 Years Old British 700ml Liquor Gift Box Included', 'Product Description: The prestigious distillery was the second government registered distillery in the Highland region of 1824 and started in the 188th century. The pinnacle of single malt has been awarded to the Rolls Roys. Only raw liqueur aged at least 12 years in select sherry barrels. The most standard The Macallan Ingredients: malt Safety Warning: Warning of fragile materials Legal Disclaimer: For alcohol after 20 years old See more', 4.5, 12451, 13, 19),
(26, 'Ichiro’s Malt & Grain World Blended Whiskey White Label, 46% Alcohol, 23.7 fl oz (700 ml)', 'Product description The key malt produced for blending is combined with malt bases from 9 different distilleries and grain whiskeys from 2 different distilleries.Features a top note of refreshing citrus fruit, a straightforward, gentle taste without any off flavors, and an elegant sweetness derived from wheat.Superb balance of affordability and good taste.Recommended straight of diluted with soda. Safety Warning \"Liquor is 20 years and up! We strictly refuse to sell liquor to minors! \" Legal Disclaimer This is a liquor. Drinking of minors (under 20) is prohibited by law', 4.5, 5050, 13, 20),
(27, 'Suntory Royal Whiskey Bottle, 20.3 fl oz (600 ml)', 'Product Description This is a limited edition Suntory Whiskey \"Royal (Tatsu)\" bottle of the 2024 zodiac (tatsu)\". The zodiac series has been popular every year as a symbol of the end and start of year, and is perfect for decorating your winter gift or other festive dinner table as well as for the end and start of the year. Since ancient times, dragons have been revered as a spiritual beast that represents the source of water for all life. The white base is a delicate and impressive bottle with an auspicious design that has been familiar with Japanese people since ancient times. With the strong power of the dragon and hope that a lot of happiness will come to you. Ingredients Malt, Grain Legal Disclaimer 【専用箱入り商品です。】 See more', 5, 16461, 13, 21),
(28, 'Suntory Hakushu Single Malt Whiskey', 'Product Description The \"Lightly Peated Malt\" with a whisky, smoky flavour like forest leaves, and various unblended liqueur with the complexity and depth of Hakushu. This single malt whiskey is created by overlapping each individuality, and features a fresh scent and a refreshing and crisp taste. We also recommend rocks, straightening, and water splitting, but please enjoy the highball that is popular in restaurants. Ingredients malt Safety Warning Please handle it gently as it is a glass bottle Legal Disclaimer Only purchase for ages 20 and up See more', 4.5, 13500, 13, 22),
(29, 'The Glenlivet 12 Year Old', 'Product Description George Smith, the founder of \"The Glenlivet,\" started the Glenlivet Distillery as the first officially licensed distillery by the Scottish government in 1824 and laid the foundation for Speyside malt.Known for its fruity and floral aroma and flavor, it has always been a leading brand in the single malt Scotch whisky category.The Glenlivet 12 Years is characterized by a balanced, fruity flavor that comes from aging in two types of barrels, American white oak and European oak, representing The Glenlivet\'s signature style.Tasting Notes: A vivid and bright gold color.A fruity aroma.You can feel the rich and soft flavor characteristic of The Glenlivet, accompanied by vanilla and the sweetness of honey.It has a long, creamy, and smooth aftertaste. Ingredients モルト Legal Disclaimer 【12本まで1送料で出荷】 実店舗と在庫を共有しております為、品切れの場合は納品までにお時間を頂く場合がございます。 See more', 4.4, 4388, 13, 23),
(30, 'Kubota Manju', 'Product description Comes in a genuine carton made exclusively for Manju and is very popular as a gift. This is the highest quality \"Junmai Daishinji\" that is known to be the best of its Kuboda, and is characterized by its pure rice liquor. Ingredients Sweet potato, rice malt Legal Disclaimer Only purchase for ages 20 and up', 4.5, 9550, 14, 24),
(31, 'Suntory Yamazaki Non-Vintage Single Malt Whiskey, 43 Degrees (Gift Box Included) (New Design Box), 23.7 fl oz (700 ml) (x1)', 'Suntory Yamazaki Non-Vintage Single Malt Whiskey, 43 Degrees, 23.6 fl oz (700 ml) (Gift Box)', 4.5, 19000, 13, 25),
(32, 'Suntory Hibiki Japan Harmony', 'Product description Hibiki Japanese Harmony 23.6 fl oz (700 ml), 43 Degree Legal Disclaimer No box, display item There may be slight damage to the display. Includes up to 6 bottles. Please order separately from the 7th part. Tokyo exclusive', 4.4, 19000, 13, 26),
(33, 'Thick Lemon Sapporo Pet Rich Greful Sour Concentrated Cocktail 60.9 fl oz (1,800 ml)', 'Product Description The \"Dark Sour Series\" is popular with a genuine taste. A large capacity of the grapefruit flavor that continues to appeared in lemons. This alcohol features a juicy, sweet and sour taste of grapefruit. Contains grapefruit juice Enjoy authentic grapefruit sour with ice and carbonated water. Ingredients Grapefruit Juice, Vodka (made in Japan), Sugars/Acidulant, Fragrance, Particulant, Caramel Coloring', 4.4, 2000, 15, 27),
(34, '[Kamiwa Server/Original Glass Included] Masters Dream 11.8 fl oz (350 ml) 24 Bottles Hibiki Blossoms Harmony Blossom Harmony 23.7 fl oz (700 ml)', 'This set includes Kamouka Server, Original Glass, Masters Dream, and Hibiki Blossom Harmony.', 4.2, 31000, 16, 28),
(35, '[Case sale] Sapporo Rich Lemon Sour Ingredients [Concentrated Cocktail 60.9 fl oz (1,800 ml) x 6 Bottles]', 'Product Description Dark Lemon Sour This alcohol is made with hand-picked lemon juice from Sicilia. Pour with carbonated water to create a refreshing scent and a dark lemon sour that features a good acidity for your mouth. Enjoy it whenever you like. Ingredients Lemon juice, vodka (made in Japan), lemon soaking liquor/acidulant, flavoring, sweetener (sucrose, acesulfame K), vitamin C', 4.4, 10100, 17, 27),
(36, 'Hibiki Blossom Harmony 23.7 fl oz (700 ml) (Gift Box Included)', 'Hibiki Blossom Harmony 23.7 fl oz (700 ml) (Gift Box)', 4.5, 19000, 13, 29),
(37, 'Suntory Yamazaki Single Malt Whiskey, 43 Degrees, 23.6 fl oz (700 ml) (Gift Box Included) (New Design Box)', 'Suntory Yamazaki Single Malt Whiskey, 43 Degrees, 23.6 fl oz (700 ml) (Gift Box)', 4.4, 19000, 13, 30),
(38, 'Suntory Hakushu Distiller\'s Reserve 23.6 fl oz (700 ml) (Gift Box Included)', 'Suntory Hakushu Distiller\'s Reserve 23.6 fl oz (700 ml) (Gift Box)', 4.5, 19000, 13, 31),
(39, 'Suntory Hibiki 21 Year Old Whiskey 23.7 fl oz (700 ml) (Gift Box Included)', 'Suntory Hibiki 21 Year Old Whiskey 23.7 fl oz (700 ml) (Gift Box)', 4.5, 19000, 13, 32),
(40, 'Suntory Hibiki 30 Years Old 23.6 fl oz (700 ml) (Gift Box Included)', 'Suntory Hibiki 30 Years Old 23.6 fl oz (700 ml) (Gift Box)', 4.5, 19000, 13, 33),
(41, 'Suntory Hibiki 17 Years Old 23.6 fl oz (700 ml) (Gift Box Included)', 'Suntory Hibiki 17 Years Old 23.6 fl oz (700 ml) (Gift Box)', 4.5, 19000, 13, 34),
(42, 'Suntory Hakushu 12 Years Old 23.6 fl oz (700 ml) (Gift Box Included)', 'Suntory Hakushu 12 Years Old 23.6 fl oz (700 ml) (Gift Box)', 4.5, 19000, 13, 35),
(43, 'Suntory Hakushu 18 Years Old 23.6 fl oz (700 ml) (Gift Box Included)', 'Suntory Hakushu 18 Years Old 23.6 fl oz (700 ml) (Gift Box)', 4.5, 19000, 13, 36),
(44, 'Suntory Hakushu 25 Years Old 23.6 fl oz (700 ml) (Gift Box Included)', 'Suntory Hakushu 25 Years Old 23.6 fl oz (700 ml) (Gift Box)', 4.5, 19000, 13, 37),
(45, 'Suntory Hakushu 30 Years Old 23.6 fl oz (700 ml) (Gift Box Included)', 'Suntory Hakushu 30 Years Old 23.6 fl oz (700 ml) (Gift Box)', 4.5, 19000, 13, 38),
(46, 'Suntory Hakushu 35 Years Old 23.6 fl oz (700 ml) (Gift Box Included)', 'Suntory Hakushu 35 Years Old 23.6 fl oz (700 ml) (Gift Box)', 4.5, 19000, 13, 39),
(47, 'Suntory Hakushu 40 Years Old 23.6 fl oz (700 ml) (Gift Box Included)', 'Suntory Hakushu 40 Years Old 23.6 fl oz (700 ml) (Gift Box)', 4.5, 19000, 13, 40),
(48, 'Suntory Hibiki 12 Years Old 23.6 fl oz (700 ml) (Gift Box Included)', 'Suntory Hibiki 12 Years Old 23.6 fl oz (700 ml) (Gift Box)', 4.5, 19000, 13, 41),
(49, 'Suntory Hibiki 18 Years Old 23.6 fl oz (700 ml) (Gift Box Included)', 'Suntory Hibiki 18 Years Old 23.6 fl oz (700 ml) (Gift Box)', 4.5, 19000, 13, 42),
(50, 'Suntory Hibiki 21 Years Old 23.6 fl oz (700 ml) (Gift Box Included)', 'Suntory Hibiki 21 Years Old 23.6 fl oz (700 ml) (Gift Box)', 4.5, 19000, 13, 43),
(51, 'Tanabe KOKO-30 First Generation Tazura Rice Gift Niigata Extremity Special Selection Niigata Produced in Niigata Koshihikari', 'Product Description   Product Introduction: Koshihikari gift set from Niigata Prefecture, carefully selected by five star master. Vacuum treated to preserve freshness of delicious taste. Set Contents: Niigata Prefecture Koshihikari 10.6 oz (300 g) (2 pieces) x 4 pcs. Country of Origin: Japan Raw Materials/Ingredients: Rice   Ingredients   rice', 4, 2267, 20, 41),
(52, 'Lamb Shabu (3-Pack Set) Lamb Slices, Lamb Slices, 10.6 oz (300 g) x 3, Frozen Food, Shabu-shabu & Hot Pot', 'Product description   Lamb shabu is softer than pork, less fat, and is recommended for cold weather. An indispensable item for cooking hot pot when meeting with friends and family. The thickness matches the fire pot.   Ingredients   Carefully Selected Lamb   Directions   This product is a thin slicing type and is best recommended for use with a burner or lamb soup   Safety Warning   Please heat the product sufficiently before consumption   Legal Disclaimer   ★Free shipping for orders over 4,000 yen (separate shipping fees will be charged for Hokkaido, Okinawa and remote islands). ★ Delivered by Yamato Transport ★Our shop will send you a description and product with a bundle. If you do not wish to make a statement, please contact us by email at the same time of your order', 4.3, 3422, 25, 42),
(53, 'Black Pig Tile, Taiwan Intestine, Taiwan Sausage, Intestinal Filler, Taiwanese Flavor, Stalls, Classic, Frozen, 7.1 oz (200 g) x 4 Piece Set', 'Taiwan\'s traditional manufacturing method makes it exceptionally delicious. You can enjoy the rich flavor of the meat, and the original flavor of the meat. Sausage is a great helper for those times when \"Noodles make side dishes\". Just bake, boil, and steam, you can create a delicious and flavorful meal. It has a sweet taste that does not mess, so it can be enjoyed by children and adults. 3. Perfect for beer snacks and also makes a great lunch box for children. Great for both rice and bread.', 4.3, 2888, 26, 43),
(54, 'Meiho Ham (12.7 oz (360 g) Meiho Specialty Processing Co., Ltd', 'Product description   The delicious taste of Meimo Ham has been raised over 30 years in the beautiful mountains, Nagara River tributes, and literally in Kamiho Village in Gifu Prefecture, Gifu Prefecture, Japan. Made from only high quality domestic pork, this product is made with the utmost effort in the use of food additives, so it can be consumed with confidence from adults to small children. The \"authentic flavor\" of Meirho Ham will be delighted to serve as a dinner table or as a gift. Handmade ham with 100% Japanese pork peach meat with minimal food additives. No preservatives, colorants, antioxidants, or enhancers are used. We offer the original flavor of pork and the original taste of pork. ※ It takes time until delivery is out of stock. Thank you for your understanding.   Ingredients   Pork, starch, salt, sugar, spices, seasonings, phosphates, coloring agents   Directions   Heated during the manufacturing process. Ready to slice and enjoy. You can also cut it slightly thick and bake it lightly with a frying pan for a different taste   Safety Warning   Shelf Life: About 30 days from date of manufacture   Legal Disclaimer   We pay attention to quality control, but if you have any concerns about it, please contact Meiho Specialty Products Processing Co., Ltd. Also, please note that we cannot accept returns due to mistakes or mistakes in order by the customer. Please note that some areas are not able to deliver cool deliveries', 3.7, 2700, 27, 44),
(55, 'Okiham Okinawa no Ajiman Cartilage Soki Soft Spare Rib with Burdock, 5.6 oz (165 g) x 5 Packs', 'Product Description   This product is easy to use at home with Okinawa local food \"Soki\" that is popular among Okinawa travelers. Delicious combination of sled and burdock that can be eaten up to cartilage. Uses \"Yamaruzum\" from Okinawa\'s underground penetration saltwater. \"Soki Soba\" on Okinawa Buckwheat is popular among those inside and outside of Okinawa Prefecture. Use in Chinese with leaf vegetables. Also great for beer and liquor companions. [Production] Okinawa Ham General Food Co., Ltd.    Ingredients   Pork rose meat (with cartilage), burdock, soy sauce, sugar (top white sugar, brown sugar), corn starch, flavored ingredients (ginger, onion), salt water, water   \r\n  Directions   When using boiling water: 1. Boil water in a pot. 2. Add this product and boil for about 5 minutes, and it\'s ready.   Legal Disclaimer   ★Delivered by Yamato Transport only   Safety Warning   Best Before Date: Displayed on the package (unopened)', 4.2, 1680, 28, 45),
(56, 'Kinryo Sushiden Premium Abalone Tare', 'Product Description   It is a set of two kinds of abalone sauce of the abalone that was caught in the sea near the Kuroshio Current. The scent and taste of the abalone are enhanced by the sea water and the Kuroshio Current. This sauce can be used as a sauce for a variety of dishes such as grilled fish and steamed dishes. The taste is rich and delicious.   Ingredients   Abalone, soy sauce, sugar, mirin, sake, kelp, bonito, (some include wheat, soybeans)   Directions   When using, adjust the taste with soy sauce.   Legal Disclaimer   Be careful not to cut your hands or fingers on the sharp parts of the abalone. Also, be careful not to bite your tongue while eating.', 4.8, 2149, 29, 46),
(57, 'Vitality & Beauty Honey Purupuru Jelly with Royal Jelly & Propolis, 10.1 oz (290 g) x 6 packs', 'Product Description   \"Honey Royal Jelly & Propolis\" is a honey jelly containing the finest royal jelly and propolis. Royal jelly and propolis are known for their abundant nutrients. It is a jelly that you can enjoy the taste of royal jelly and propolis while eating with a chewy texture.   Ingredients   Honey, fructose glucose liquid sugar, royal jelly, propolis, gelling agent (thickening polysaccharide), acidulant, flavoring, sweetener (sucralose), (some contain gelatin)   Legal Disclaimer   ★Free shipping for orders over 5,000 yen (tax included) for purchases at our store. ★ Delivered by Yamato Transport only', 4.5, 3456, 30, 47),
(58, 'Gin no Suzume Premium Japanese A5 Wagyu Beef Sirloin 7.05 oz (200 g) x 2 packs', 'Product Description   Japanese Wagyu Beef Sirloin is a high-quality beef cut from cattle raised with care. It is characterized by its rich flavor and marbling, and is a popular ingredient in Japanese cuisine. This product uses only the finest Wagyu beef, known for its tenderness and flavor. It is a luxurious and delicious choice for any meal.   Ingredients   Wagyu beef   Directions   When using this product, be sure to cook it thoroughly to ensure food safety.   Safety Warning   Please note that this product is delivered frozen. Please thaw before cooking.', 5, 9999, 31, 48),
(59, 'Otani Seika Mochi Shokkan 7.05 oz (200 g) x 6 packs', 'Product Description   This is a set of 6 packs of \"Mochi Shokkan\" made by Otani Seika. It is a chewy and delicious rice cake that can be enjoyed as a snack or dessert. It is made from high-quality rice and has a soft and chewy texture. It is a popular snack in Japan and is often enjoyed with tea or as a sweet treat.   Ingredients   Rice, sugar, starch syrup, soybean flour   Legal Disclaimer   ★Free shipping for orders over 5,000 yen (tax included) for purchases at our store. ★ Delivered by Yamato Transport only', 4.2, 2980, 32, 49),
(60, 'Kurashinomiya Kanpyo Tea 0.7 oz (20 g) x 10 packs', 'Product Description   Kurashinomiya Kanpyo Tea is a tea made from high-quality Kanpyo, a type of gourd. It has a refreshing taste and is often enjoyed as a healthy drink. It is rich in vitamins and minerals, making it a popular choice for those looking for a natural and healthy beverage.   Ingredients   Kanpyo   Directions   To enjoy Kurashinomiya Kanpyo Tea, simply steep a tea bag in hot water for a few minutes. The tea can be enjoyed hot or cold, depending on your preference.   Legal Disclaimer   ★Free shipping for orders over 5,000 yen (tax included) for purchases at our store. ★ Delivered by Yamato Transport only', 4.4, 1490, 33, 50),
(61, 'Kirakira Sushi No Moto Raw Scallop Soy Sauce Marinated, 5.6 oz (160 g) x 3 packs', 'Product Description   Kirakira Sushi No Moto Raw Scallop Soy Sauce Marinated is a delicious and convenient way to enjoy raw scallops at home. The scallops are marinated in soy sauce, giving them a rich and savory flavor. They are perfect for sushi, sashimi, or as a topping for rice bowls.   Ingredients   Raw scallop, soy sauce, mirin, sugar, salt   Directions   Simply remove the scallops from the package and enjoy them as is, or use them as a topping for sushi or sashimi.   Legal Disclaimer   ★Free shipping for orders over 5,000 yen (tax included) for purchases at our store. ★ Delivered by Yamato Transport only', 4.8, 3990, 34, 51),
(62, 'The Salmon Shop Salmon Roe with Salt 3.5 oz (100 g) x 2 packs', 'Product Description   The Salmon Shop Salmon Roe with Salt is a delicious and versatile ingredient that can be used in a variety of dishes. The salmon roe is carefully selected and prepared to ensure the highest quality and flavor. It is perfect for sushi, sashimi, or as a garnish for salads and other dishes.   Ingredients   Salmon roe, salt   Directions   Simply remove the salmon roe from the package and use it as desired. It is perfect for adding a burst of flavor and texture to your favorite dishes.   Legal Disclaimer   ★Free shipping for orders over 5,000 yen (tax included) for purchases at our store. ★ Delivered by Yamato Transport only', 4.7, 1980, 35, 52),
(63, 'Sanko Quality Delicacy Salty Salmon (Long Bottle) 7.1 oz (200 g)', 'Product description   Volume: 7.1 oz (200 g).  Shelf Life: 20 days.  Keep refrigerated at 50.0°F (10°C) or below.  Ingredients: Atlantic salmon, rice koji, salmon roe, pure sake, salt, fermented seasoning, red pepper, seasoning (amino acids), alcohol, acidulant, pH adjuster, red pepper extract, stabilizer (xanthan gum), antioxidant (vitamin C)  Allergens: Salmon roe, salmon, soy, pork   Ingredients   Contents: 7.1 oz (200 g); Shelf Life: 20 days from date of ship; Ingredients: Atlantic salmon, rice kouji, straw, purified sake, salt, fermented seasoning, chili pepper, seasoning (amino acids), alcohol, acidulant, pH conditioner, chili pepper extract, stabilizer (xanthan), antioxidants (vitamin C). Allergens: starch, soy, pork storage method. > Refrigerate 10 <°C (Allergenics) Kooli, Moss, Soy, Pork', 4.1, 1.188, 31, 51),
(64, '(Translation) Unselected Crepe Sardine 3.5 oz (100 g)', 'Product description   Note: Due to the rising of crepe, each bag contains 3.5 oz (100 g). Please be aware of [Shipping cost] 250 yen [Reasons for availability] Because it is uncertained. [Unselected] When bagging the crepe jac, large and small fish are not selected. Please understand that small fish and shrimp crab are not included with crepe jako.   Ingredients   Dried Prep   Legal Disclaimer   Shrimp and crab are caught in a way that can be caught together', 4.1, 699, 32, 52),
(65, 'Takuma Foods Sweet Soup Jerky, 1 Bag x 50 Bags', 'Product Description   The sweetly seasoned squid has been finished with a plank stick. The more you bite, the more you bite. Each piece is individually packaged, so it is convenient to store and carry. Perfect as a snack for kids, as well as an adult snack for alcohol, or for tea preparation. It is also effective for awakening sleep due to its chewing sensation. This is a long-selling Sume Jerky sister of our signature.   Ingredients   Squid, sugar, salt, lactose, sorbitol, seasoning (amino acids, etc.), sweeteners (stevia, czophia)   \r\n  Legal Disclaimer   Other than the product price is charged. The packing materials used for delivery are recycled. Delivery sizes up to 130 will be supported with 1 shipment of various orders. (We will only accept [if you order in bulk at a time) when ordering multiple or several types of our handled items. Orders are ordered individually, and will be shipped by the order number and cannot be shipped in the package. We are sorry, but we are very sorry for cancellation once the order has been confirmed. Returns and exchanges except for defective products are not possible as they are food cates. Thank you for your understanding   See more', 4.4, 2.38, 31, 53),
(66, 'Kyokichi Black Squid Making, 2.1 oz (60 g) x 6 Pieces - Cool Frozen-', 'Product description   The black maple is made of black with squid ink on the salt spices.   Ingredients   Ikatsu, cave, salt, seasoning (amino acids, etc.)', 4, 2.61, 31, 54),
(67, '[Produced in Hokkaido] Dried Scallops Scallops Natural Top Quality Product 55g Size Selectable Meiji Fisheries SA (Approx. 13 Pieces)', 'Product description   Our mission is to provide consumers with high quality products based on the bounty of the sea. We use carefully selected ingredients from excellent fishing farms and thoroughly, from standard processing techniques to strict quality control.   Ingredients   Scallop   \r\n  Directions   Please put it back in water and consume it   See more', 3.9, 1.42, 33, 55),
(68, 'Kato Suisan Salt Herring Roe Large 17.6 oz (500 g)', 'Product description   A few of these are indispensable for the New Year\'s festivals. Some of the top brands of Katou Suisui salt-number, is a masterpiece that has been carefully selected and inspected for raw eggs from Alaska, Canada. Recommended as a dinner table celebrating the New Year.   Ingredients   Herring Egg (American, Canada), Salt   \r\n  Legal Disclaimer   Refrigeration required: 32°F - 30°F (0°C - 10°C)   See more', 4.4, 7390, 34, 56),
(69, 'Seto Inland Sea Additive-Free Dried Odo Crepe 1.8 oz (50 g) x 2 Bags', 'Made in Otonto from Hiroshima Prefecture, the world\'s leading crepe fishery. Please enjoy the delicacy of the islands surrounded by the beautiful sea of Sound Door. Product Name: Crepe Raw Material: Sowami, Salt. Contents: 1.8 oz (50 g) x 2 (in a bag) Shelf Life: 70 days. -Storage Method: Avoid high temperature and humidity. -Shrimp is harvested using a fishing method that mixes crabs, shrimp and squid. -', 3.9, 1.1, 32, 57),
(70, 'Keishi Small Fish (3 Case Set) Small Fish Snacks and Delicates, Individually Packaged (0.4 oz (12 g) x 20 Pieces x 3 Pieces', 'Shelf Life: October 18, 2023', 4.7, 2.26, 35, 58),
(71, 'Seto Inland Sea Product, Additive-free, Non-Coloring, Freshly Dried Ami Shrimp, 1.6 oz (45 g) x 3 Bags', 'Made in Seto Inai Sea, Hiroshima Prefecture, one of the largest fishing fields throughout the country. Please enjoy the delicacy of the island surrounded by the beautiful seto inshore sea. Storage Method: Avoid high temperature and humidity.', 4.2, 1, 33, 59),
(72, 'Kurakon Salt Konbu, Large, 1.8 oz (50 g)', 'Salt kombu, Large, 1.7 oz (50 g).', 4.7, 440, 36, 60),
(73, 'Yamaka (Kato Suisan) Salt Herring Roe, 17.6 oz (500 g), Boxed', 'Product description   Please remove the salt before eating. [Good Salt-Removing Method] The product is printed on the back of the box.   Legal Disclaimer   Ingredients: Herring\'s egg, salt; Country of Origin: Canada or America; Processed Area: Hokkaido; Contents: 17.6 oz (500 g); Shelf Life: on the back of the box; Storage Method: Refrigerate (0 - 10 °C); Manufacturer: Kato Seafare Co., Ltd', 4.1, 5920, 34, 61),
(74, 'Komatsu Konbu Assorted 2 Pieces (In Wooden Box)', 'This is a set of 2 Komatsu Kombu in bottles.', 4.4, 5.1, 36, 62),
(75, 'Frozen Rice Sticks (Set of 2) (5 Piece Set), Mochi Corn, White Corn, Frozen Foods, Pack of 2 x 5', 'Product description   Variety: Chuchi No. 1. This is not a sweet cone, so please be careful when purchasing. ]   Ingredients   Corn (not GMO)   Directions   It can be eaten immediately after heating. Also recommended for salads. An indispensable ingredient for pots, salads, Chinese porridge, barbecues, and skewers   Legal Disclaimer   ★Free shipping for orders over 4,000 yen (additional shipping will be charged for Hokkaido, Okinawa and remote islands) (Frozen fee). ★Ship by Yamato Transport ★Our shop will send you a description and product with a bundle. If you do not wish to make a statement, please contact us by email at the same time of your order', 3.8, 2.56, 37, 63),
(76, 'Daikon Radish, Daikon Radish, 1 Box 22.0 lbs (10 kg)', 'The place of production changes throughout the year, but we will always deliver products in Japan. 1 box: Approximately 22.0 lbs (10 kg); 7 pieces to 12 pieces (depending on the size). Attention to detail: As this product will be delivered in a better condition, there may be cases where it cannot be delivered at the time of the desired date. Size cannot be selected.', 3.1, 1.77, 38, 64),
(77, 'Toyo Suisan Crispy Infinity Lettuce 1 Meal', 'Product description   TOYO SUITAN   Legal Disclaimer   Product Name: Oiled Chinese Men. Ingredients: Noodles (flour (made in Japan), vegetable oil, salt/eggs, antioxidant (vitamin E), paprika pigment, (some contain wheat)) Attaching seasonings (vegetable oil, salt, pork oil, spices, arcowhose treatment, sugar, powdered vinegar, powdered chicken egg processing, bonito extract, kelp extract, seasoning (amino acids, etc. Plywood Dyelutes, fragrances (some may include wheat, egg, dairy ingredients, salmon, mackerel, soy, poultry, pork); Contents: 2.0 oz (55 g) (noodle 40 g)); Shelf life: on the bottom of the frame. (About 4 months) Storage instructions: Store in places with high temperatures, humidity, and odors, and at room temperature away from direct sunlight. Usage Notes: Please consume within the shelf-life. Because it is fried with oil, please store at room temperature away from direct sunlight', 3.6, 1.198, 39, 37),
(78, 'Hiroshima Prefecture Cabbage, 22.0 lbs (10 kg), Fresh Vegetables, Farmers Direct', 'Cabbage in Takamiyamachi, Amoki Takata City, Hiroshima Prefecture. The non-standard cabbage is different in large and small sizes, but the freshness is excellent. Please try it.', 4, 2.8, 40, 65),
(79, '[No Pesticides / Reduced Pesticides] Vegetables and Fruits Set, Assorted Product, 10 or More Items, Plenty of Fresh Vegetables', 'We created a vegetable set based on vegetables produced in Asaakura and Itoshima, a delicious representative of Fukuoka. This vegetable is made with pesticides and pesticides free during the growing period, so it can be safely used by children. Varieties may vary depending on the season, but we will always pack more than 10 items at all times! We strive to make sure you will be completely satisfied!', 5, 3.6, 41, 66),
(80, 'Mandarin Oranges from Wakayama Prefecture, 11.0 lbs (5 kg), For Home Use, Size Not Selected', 'Mandarin from Wakayama, the home of the house. Mikan produced in Wakayama Prefecture, 11.0 lbs (5 kg), free shipping (Hokkaido: Different uses, Okinawa, remote islands: Besides) We will deliver the orange oranges according to the time of your home. Random sizes from S-L The oranges on the bottom of the product may tear off. We appreciate your understanding. The oranges in the picture are a sample. Size is random, slightly damaged. Shipped in a recycle box.', 4, 2.5, 42, 66),
(81, 'The 3 World Shop Prunes (Seeds) 4.2 oz (120 g)', 'Oils and additives free organic (organic) raw materials. This is an organically grown dry prune from California, USA. Dajan seeds originating from South France, you can enjoy the concentrated sweetness and refreshing sour flavor. No additives such as oil, preservatives. Dried and removed after harvesting. Just dry raw prunes and do not have oil coatings. According to the producer, organic cultivation tends to sweeten fruit because water from the tree is less water.', 5, 581, 43, 67),
(82, 'Iburi no Sato Iburigakko Slice 4.2 oz (120 g) x 3 Bags) Local Specialty of Akita Prefecture', 'Product description   A special product from the area of Akita Prefecture. A local specialty product in Akita Prefecture, Akita Prefecture, Japan. This is a traditional Akita pickle made consistently by the producer. We carefully pickled the old fashioned taste.   Legal Disclaimer   ※Delivery data is not included. ※It will be delivered by Mail-bin mailbox', 3.8, 1.21, 44, 68),
(83, 'Agatsuma Foods Delicious Ginger Hey! 8.5 oz (240 g)', 'Product Description   \"Umakai Ginger!\" is finely cut ginger in a special soy sauce. Made with ginger from Japan, Fukushima Prefecture. It can be used as it is, laid with rice, sprinkled with natto, or as a condiment of noodles and sashimi. Please try it once.   Ingredients   Ginger (made in Japan), pickled ingredients (soy sauce, sugar, mixed glucose fructose syrup, fermented seasoning, salt, brewed vinegar, rice vinegar, kelp, sesame), sorbitol, seasoning (amino acid)   Safety Warning   After opening, please store it in the fridge (3.2 - 30.0 °F (1 - 10 °C) and consume as soon as possible   Legal Disclaimer   Some ingredients contain wheat and soy', 4.1, 620, 45, 69),
(84, 'Asakusa Imahan Beef Tsukuda Boiled Assortment L-30Z', 'Beef scoop 1.8 oz (50 g), beef soup 1.8 oz (50 g), beef shiitake 1.8 oz (50 g), beef burdock 1.8 oz (50 g) x 1.8 oz (50 g) Comes in a wooden box Shelf Life: 180 days from manufacture.', 3.9, 3.647, 46, 70),
(85, 'Asakusa Imahan Beef Tsukudani Assortment in a Wooden Box K-30Z', 'The flavor of the material has been fully brought out. Set Contents: 4 pieces (beef scooping, beef soup / burdock beef / beef shiitake ) Shelf Life: 180 days at room temperature. ※ Please specify delivery date after the 7th day of your order. This product is delivered directly from the manufacturer, so we will contact the request after confirmation that the delivery address has been completed. Please be aware that it may take a time to contact us after the delivery is completed. ※We cannot accept cash on delivery. 11400394 \"', 3.8, 3.57, 46, 71),
(86, 'Asakusa Imahan Beef Tsukuda Boiled Assortment, 7 Pieces', '\"Shinnosuke Kai Shin\" continues to maintain the taste of the tradition.', 3.8, 7.44, 46, 72),
(87, 'Sangokuya Michinoku Pickled Vegetables, Late Chrysanthemum, 3.5 oz (100 g)', 'Michi no Ku Pickle Lupthumbs 3.5 oz (100 g)', 4.4, 898, 44, 73),
(88, 'Umeboshi Pure 24 Tablets, Set of 4', 'Pure Plum Boshi 24 Tablets (Set of 4)', 4.6, 989, 47, 74);
INSERT INTO `app_product` (`id`, `name`, `content`, `average_rating`, `price`, `category_id`, `supplier_id`) VALUES
(89, 'Kim Ozu Korikin Kannen (5-Piece Set), Seasoned Kokitake Delicious Dishes, Chinese Food, 2.9 oz (55 g) x 5 Pieces, Nekoposu', 'Product description   Edible bacteria have been a beautiful symbol of mountain fortune since ancient times, and it is a high protein low-fat food that is both young and old, and people are called \"raw odor\".   Ingredients   Ebone, soy oil, chili pepper, salt, sugar, additives (sodium glutamate, 5-ribbonucleotide, citric acid)   Directions   Can be eaten as is, or perfect for warm rice or porridge   Legal Disclaimer   ★ We will ship with Neko Pos (tracking type) and we cannot accept cash on delivery. Nekoposu will be delivered by your mail, please check your mailbox. ★【Shelf Life: December 2018】', 4.4, 900, 48, 75),
(90, 'Nori Tsukudani 190460, 0.2 oz (5 g) x 40', 'Product Description   Single serving stick type. Great for warm rice and rice dishes, as well as for various dishes. Made from starfish exfoliate, this product is made with a rich flavor of the sea. The shape of the bag is a long stick type that is easy to hold and easy to open.   Ingredients   Dried Starfish', 4, 1.746, 49, 76),
(91, 'Shredded Salted Kelp Shiraiso, Bag 2.4 oz (70 g) Oguraya Yamamoto', 'Product description   Shredded salt kelp cloth Shiawaso Shiba is a shredded salt cloth kelp with a mellow flavor that is unique to Shakombu in Hokkaido. ■ Contents: 2.5 oz (70 g). ■ Shelf Life: 150 days from date of manufacture. ■ Storage Method: Store at room temperature away from direct sunlight, high temperatures and humidity. ■ Ingredients: Soy sauce (includes wheat and soybeans, made in Japan), kombu, refined sake, sugar, reduced malt sugar/seasoning (amino acids, etc.), baking soda, sweetener (licorice)■Nutritional ingredients displayed (per 1 meal (6g))): Energy: 12 kcal Protein: 1.31 g Fats: 0.31 g Carbodies: 0.31 g 1.18g Dietary Fiber: 0.03 oz (0.79 g), Salt Equivalent: 0.04 oz (1.04 g).   Ingredients   Ingredients: Soy sauce (including wheat and soy), kombu, refined sake, sugar, reduced malt sugar, seasoning (amino acids), baking soda, sweetener (licate) / nutritional ingredients (per 1 meal (6 g)): Energy: 12 kcal, Protein: 1.31 g, Fat: 0.04 g, Carbohydrate: 1.97 g, Sugar: 1.97 g, Food: 18 g, Food. Fiber Contents: 0. 2.8 oz (79 g), Salt Equivalent: 0.04 oz (1.04 g)', 4.3, 2.18, 50, 77),
(92, 'Haagen-Dazs Ice Cream Variety Set, 10 Pieces, For Middle Years, Etc', 'Product Contents: A set of assorted mini cups that everyone will love. Perfect for seasonal greetings, weddings, baby showers, and more. Contents: 4.3 fl oz (110 ml) x 10 pcs, Vanilla, Strawberry, Cookies, Cream, Chocoladuo, Guntee, Macademinuts, Lemon Cream Parfait, Havenry Caramel, Lamb Raisin, Rich Milk, 1 each Product Description', 4.4, 3.9, 51, 78),
(93, 'Haagen-Dazs, Mini Cup, A Set, Variety of 6 Types, 12 Pieces, Gift Setting Compatible', 'Includes 6 classic and popular flavors. Includes 6 classic mini cups x 2 and a total of 12 pieces, so you can enjoy your favorite taste. Recommended for a wide variety of occasions, such as a gift for baby showers, celebrations, returns, and inserts. Also enjoy the Hagen Dats Mini Cup A Set to relax your daily fatigue or enjoy your home with one of the fun of spending time at home. Set Contents: Vanilla (4976994205010) 4.3 fl oz (110 ml) x 2 Strawberry (4976994205027) 4.3 fl oz (110 ml) x 2 Green Tea (4976994205034) 4.3 fl oz (110 ml) x 2 Macademia Nuts (4976994206338) 4.3 fl oz (110 ml) x 2 Cookie & Cream (4976994205041) 4.3 fl oz (110 ml) x 2 Chocola Duo (4976994206642) 4.3 fl oz (110 ml) x 2 (Vanilla) Type Name: Ice Cream Ingredients: Non-fat milk solids: 10.0% Milk fat: 15.0% Egg fat: 0.8% Ingredients: Cream (raw milk (Hokkaido)), concentrated skim milk, sugar, egg yolk / vanilla flavor, (some contain dairy ingredients and eggs). (Strawberry) Type Name: Ice Cream Ingredients: Non-fat milk solids: 8.5% Milk fat: 14.0% Egg fat: 0.6% Juice / pulp: 23% Ingredients: Cream (raw milk (Hokkaido)), concentrated skim milk, strawberry pulp, sugar, egg yolk (some contain milk ingredients and eggs). (Green Tee) Type Name: Ice Cream Ingredients: Non-fat milk solids: 9.0% Milk fat: 13.5% Egg fat: 0.8% Ingredients: Cream (raw milk (Hokkaido)), concentrated skim milk, sugar, egg yolk, straight tea, (some contain dairy ingredients and eggs). (Cookie & Cream) Type Name: Ice Cream Ingredients: Non-fat milk solids: 9.0% Milk fat: 14.0% Egg fat: 0.8% Ingredients: Cream (raw milk (Hokkaido)), concentrated skim milk, sugar, chocolate cookies, egg yolk / vanilla flavor, plant lecithin, (some contain dairy ingredients, eggs, wheat, and soy). (Macademia Nuts) Type Name: Ice Cream Ingredients: Non-fat milk solids: 9.0% Milk fat: 17.0% Egg fat: 0.8% Ingredients: Cream (raw milk (Hokkaido)), concentrated skim milk, sugar, frymacademia nuts, egg yolk, butter scutch, (some contain dairy ingredients and eggs). (Chocoladuo) Type Name: Ice Cream Ingredients: Non-fat milk solids: 9.0% Milk fat: 13.0% Egg fat: 0.7% Chocolate fat: 2.5% Ingredients: Cream (raw milk (Hokkaido)), concentrated skim milk, sugar, egg yolk, milk chocolate, cocoa powder, cacao mass, caramel sauce, chocolate/vanilla flavoring, plant lecithin, (some contain dairy ingredients, eggs, soy).', 4.3, 4.4, 49, 79),
(94, 'Haagen-Dazs Mini Cup 5 Types + Rich Milk, 12 Pieces, Gift Setting Compatible', 'Hagen Dats Mini Cup Set of 12 (Set Contents) 2 Vanilla, 2 Strawberries, 2 Green Tea, 2 Macademia Nuts, 2 Cookies & Cream, 2 Rich Milk; 5 classic products are combined with a limited time limited edition rich milk.', 4.4, 4.69, 51, 79),
(95, 'Beijing Duck Wrapped Mochi Skin (Kaoya) 50 Sheets', 'A generous pack of 50 sheets for a great value. You can bake poultry and wrap it with vegetables. You can even wrap it up with meaten eggplant, etc. Gently steam, or heat in a microwave before using.', 4.3, 1.88, 52, 80),
(96, '(Frozen) Nippon Omai Big Frozen Pasta, 10 Bags, Assorted Set, Compare to Eat, Bulk Purchase. *Contents may differ from the photos', 'Product description   Operated by a comprehensive food wholesaler with 30 years of history, Smile Spoon\'s assortment set is carefully selected to meet the needs of a wide range of home and commercial needs. You can enjoy different attractive products. Assortment Contents/[Frozen] Japanese Flour Omy Big Bacon and Spinach Butter Soy Sauce 13.8 oz (380 g) 1/[Frozen] Japanese Flour, Omai Big Carbonara, 12.2 oz (360 g) 1/[Frozen Food] Omy Big Japanese-style Mentai 12 pcs Big Bornese Omai Big Super Garlic Pepperoncino 12.5 oz (380 g) x 2 / [Frozen Food] Omai Big Octopus Butter 12.5 oz (340 g) x 1   Legal Disclaimer   Since it is frozen food, we do not accept returns or refunds after purchase. Product contents may change depending on time of year', 4.2, 2.29, 53, 81),
(97, 'Dumplings, Utsunomiya Minmin, Raw Dumplings, Frozen, 5 Servings, 30 Pieces, Made in Japan, Utsunomiya Specialty Dumplings, Dumplings, Dumplings, Dumplings, Dumplings, Frozen Dumplings, Order, Minmin, Kenmin Show', 'These dumplings are the main body of vegetables that are full of cabbage vegetables. The garlic that is used a little bit is suppressed, and the taste is left behind.', 3.9, 2.566, 52, 82),
(98, '[Frozen] Nippon Good Bari Plate, 6 Types', '1. A set of juicy chicken savage and chicken flavors. 2. A set of juicy fried black vinegar ampere and a generous 3.5 oz (100 g) of 5 types of vegetables. 3. A set of popular grated sauce hamburg and Japanese spaghetti The hamburger is plump and juicy, and has been renewed. 4. Set includes gratin and bolognese spaghetti with shrimp and 4 types of vegetables. 5. A set of popular demi glass sauce hamburger and napolitan. The hamburger is plump and juicy, and has been renewed. 6. Set includes omurice and tomato sauce hamburger The hamburger is plump and juicy, and has been renewed.', 4.2, 2.7, 54, 83),
(99, 'GODIVA Classic Set of 6 Types, 12 Pieces (6 Types x 2 Pieces), Gift Settings Ready', 'Satisfy Chocolate Ice Cream Lovers 6 carefully selected chocolate flavors that can only be found in Goddiva x 2 each. Comes in an original set of 12! Set Contents: Uji Matcha and Vanilla with Chocolate Sauce (Limited Time Limited) 3.4 fl oz (90 ml) x 2 Bottles Milk Chocolate & Heart Chip 90ml x 2 Belgian Dark Chocolate 3.4 fl oz (90 ml) x 2 Vanilla & Cacao Essence 3.4 fl oz (90 ml) x 2 Pieces Hazelnut Praline & Heart Tip 3.4 fl oz (90 ml) x 2 Pieces Strawberry & Heart Chips 90ml x 2', 4.4, 5.3, 51, 84),
(100, 'Ma Ma Pasta Table Napolitan 7.8 oz (220 g) x 6 Packs', 'Product Description   Product Introduction: Traditional Napolitan with a rich taste. Raw Materials/Composition: Tomato paste (made in Portuguese), onions, sugar conditioner (sugar, salt), mushroom, vegetable oil, carrot, salt, consome, yeast extract, onion paste, spices, dried parsley, yeast extract powder/thickening agent (processed starch), acidulant (some parts wheat, chicken, soybeans. Including meat)   Ingredients   Tomato paste (made in Portuguese), onions, sugar conditioner (sugar, salt), mushroom, vegetable oil, carrots, salt, consome, yeast extract, onion paste, spices, dried parsley, yeast extract powder/thickener (processed starch), acidulant, (some may contain wheat, dairy components, soy, chicken)', 3.9, 1.1, 53, 85),
(101, 'Haagen-Dazs Mini Cup Variety Set of 5 Types of 12', 'Hagen Dats Ice Cream Set of 12 4 Vanilla, 2 Strawberries, 2 Green Tea, 2 Cookies & Creams, 2 Macademia Nuts, 2 Crisp Chip Chocolates', 4.2, 4.46, 51, 79),
(102, 'Hikari Miso Field Ingredients, 6.7 oz (190 g)', 'Product Description   [Mail Order Limited Product] A convenient dry vegetable mix that is always prepared. A well-balanced mix of 5 kinds of food that can be harvested in the fields (chingen, cabbage, carrot, corn, soy protein*). It will return to the water in about 2 minutes, so you can enjoy it as it is in miso soup, soup, ramen, etc. Soy Protein: Soy-based proteins are arranged and dried [How to use] The portion is preferred, but 1/2 tsp per spoon of miso soup is estimated. For instant foods (cup ramen, soup, miso soup, yakisoba, etc.), please place it directly before adding hot water. When cooking from ingredients, please return it to hot water before using. Examples: Egg, miso soup, soup, preferably yakisoba, etc. Shelf life is 1 year from the date of manufacture. The packaging is made of highly preservable aluminum foil material and the zipper makes it convenient for storage. Lightweight and highly stored, it is recommended as a portable item for camping and mountain climbing, or as a disaster preparedness supply. Before use, shake the bag lightly to mix and remove it with a dry spoon, etc. Please be aware that if the spoon is exposed to moisture and dirt may cause mold. Only dried materials are not included with the taste or soupe. (Nutrition composition displayed (per 3.5 oz (100 g)) Energy: 377 kcal, Protein: 9.8 g, Fats: .3 g, Carbohydrates: 81.5 g, Salt Equivalent: 0.3 g (estimated value). (Includes 7 allergy specific items, recommended 21 items) Dairy ingredients, soy.   Ingredients   Dried cabbage (made in China), dried carrots (made in China), dried carrots, granular soy protein/caramel pigment (some of the raw materials contain dairy ingredients and soy)   Directions   (How to eat): If you put it into miso soup, soup, etc.: Add it as it is and wait for about 2 minutes. For use with fried food or simmering foods: Put it back in boiling water for 2 minutes, then strainer it before using. Before use, please shake the bag lightly so that the ingredients may be mixed. As food is susceptible to moisture, please close the zipper and store it in a cool dry place after opening, and use it as soon as possible. Do not put wet spoon into the bag. The color of the awareness may transfer and turn green, but this does not affect the quality. Please be careful not to injure your hand from opening or bag backing   Legal Disclaimer   As food is susceptible to moisture, please close the zipper tightly and store it in a cool dry place after opening, and use it as soon as possible. Do not put wet spoon into the bag. Please be careful not to injure your hand from opening or bag backing', 4.2, 1.386, 55, 86),
(103, 'Maru-chan Crispy Infinity Cabbage Base, Set of 20 Bags', '3-piece set includes crispy noodles, salty powdered soup with onions and sesames, and special oil. This item is great for a variety of food situations. Ingredients: Noodles (flour (made in Japan), vegetable oil, salt/eggplant, antioxidant (vitamin E), paprika pigment, (some may contain wheat)), attached seasoning (vegetable oil, salt, lactose, soy sauce, sugar, spices, chicken extract, sesame, powdered vegetables, onions, flavoring oils/seasonings (amino acids, etc.), some parts of wheat, dairy ingredients, sesame ingredients. Soybean, poultry included)', 4.1, 3.654, 55, 87),
(104, 'Kira Foods Dried Vegetables, Carrots from Kyushu, 1.4 oz (40 g) x 5 Bags', 'Product Description   We carefully processed the delicious taste of domestic vegetables. Return Method: Put it back for about 5 minutes or more with boiling water.    Ingredients   Carrots (from Kyushu), Glucose   Directions   How to return: Please use boiling water for more than 5 minutes with water for about 10 minutes   Legal Disclaimer   We will send you a message or click post. We cannot guarantee damages or send replacement products. Thank you for your understanding', 4.1, 1.535, 55, 88),
(105, 'Mediterranean Foods Dried Porcini Premium 0.7 oz (20 g)', 'The porcini of natural mushrooms are sliced and dried from natural mushrooms that were collected in the natural nature near Kuno, Piedmonte, and is carefully selected by the prestigious food manufacturer Inaudi. Porcini\'s signature aroma complements your food when used for simmer, meat sauce, or mushroom dishes. Because it is a natural mushroom mushroom, there may be bugs attached. Please rinse it off before use.', 3.8, 1.91, 55, 89),
(106, 'Vegetables fainpauda- Pumpkin G [Vegetables fainpauda- Pumpkin G]', '●産地:北海道●賞味期限:袋上部に記載●保存方法:高温多湿・直射日光をさけ、冷暗所にて保管してください。●原材料:かぼちゃ●生野菜使用量:100グラムあたりかぼちゃを約500g使用しています。 ●栄養成分熱量(kcal) 360たんぱく質(g) 4.7脂質(g) 2.7糖質(g) 72.6食物繊維(g) 13.1ナトリウム(mg) 6水分(g) 3.8灰分(g) 3.1カリウム(mg) 1590マグネシウム(mg) 55カルシウム(mg) 26リン(mg) 144鉄(mg) 1.4葉酸(μg) 45ビタミンA(μg) 63ビタミンC(mg) 5※100gあたりの数値 (財)日本食品分析センター調べ', 4, 1.103, 55, 90),
(107, '【鹿児島県産100% 使用】naconaしょうがパウダー(生姜パウダー) (25g入り)【蒸し生姜並のショウガオール】', '●産地:鹿児島県●賞味期限:袋上部に記載●保存方法:高温多湿・直射日光をさけ、冷暗所にて保管してください。●原材料:しょうが(根茎)●生野菜使用量:100グラムあたり生姜を約1093g使用しています。●栄養成分熱量(kcal) 305たんぱく質(g) 7.4脂質(g) 5.4糖質(g) 42.5食物繊維(g) 28.6ナトリウム(mg) 21水分(g) 7.2灰分(g) 8.9カリウム(mg) 4030マグネシウム(mg) 301カルシウム(mg) 164リン(mg) 296鉄(mg) 4葉酸(μg) 40ビタミンA(μg) 9ビタミンE(mg) 1.4※100gあたりの数値 (財)日本食品分析センター調べ', 4, 1.103, 56, 90),
(108, 'Purple Sweet Potato Flakes / 5.3 oz (150 g) Tomisawa Shoten Other Flakes & Pastes', 'Product description   Dried flakes with purple sweets. For tea towel or bean tea.   Ingredients   Purple Sweet Potato (produced in Miyazaki Prefecture, Kagoshima Prefecture)', 3.5, 1.2, 55, 91),
(109, 'Dried Pak Leaves / Approx. 20 Sheets Tomisawa Shoten Other Leaves & Grass', 'Magnolia leaves harvested from natural mountains No pesticides are used. Please wipe with a dish cloth before using. Use miso or vegetables to fry magic.', 4.3, 1.48, 55, 91),
(110, 'Kumamoto Beet Powder 3.5 oz (100 g) / Beet Radish Powder/Additive-free/Color-free/Red Beets 100% (For Smoothies)', 'Kumamoto Prefecture Beets Powder \"KUMAMOTO RED BEET\" 7 Commitments --- 1. 100% beats -- We make 3.5 oz (100 g) of beets powder, and we use 8.5 oz (2,400 g) of raw beats that weigh 24 times the weight. Available in 2 types: 150 mesh and 40 mesh coarse granules to suit your needs. 2. Place of Origin: -- Unlike imported vegetables that are sold at a low unit price, pure domestic vegetables (produced in Kumamoto Prefecture). Limited to all producers (More than 80% processes beets from the manufacturer Asagiri farming.) 3. Uses a grade A product. -- Vegetables commonly used for vegetable vegetables are made with vegetables that are not able to be distributed in the market due to illness, etc. However, KUMAMOTO RED BEET, since they are grown exclusively for processed vegetables. 4. Pesticide cultivation -- About 30% of the production cultivation of the general market produce. Made from 60% cut pesticide beats. When not in extreme cold weather. 5. Suitable for growing -- Because it is a basin area, the temperature difference is large, and the stress of the temperature different, the sugar content may increase, and the concentration of vitamin C, E, and beta carotene increases, and the taste is increased. 6. Zero chemical sterilization. -- This beats powder is safe and safe because it is sterilized by boiling water without chemical disinfectation. 7. Shun Vegetables -- The beets used as raw material are the most delicious and nutritious \"Shun\" items dried and stored in a cooler. You will receive the best condition of beats at any time.', 3.8, 1944, 55, 92),
(111, 'Tono Hand Cut Condiment, Onion Nori, 0.3 oz (9 g) x 2 Bags', 'Product description   By adding a small amount to your dishes, it will tighten the flavor, add fragrance to your appetite and add color to your dishes. In particular, we have combined \"onion\" and \"nori,\" which are frequently used at home and are packed in 1 bag. A bag in your home will be useful at any time. You can use it for a variety of purposes depending on your ideas, such as noodles, servings, tofu, etc.   Ingredients   Seaweed (made in Japan) dried onions (onions, malt sugar)', 5, 1.198, 55, 93),
(112, '[Kamiwa Server/Original Glass Included] Masters Dream 11.8 fl oz (350 ml) 24 Bottles Hibiki Blossoms Harmony Blossom Harmony 23.7 fl oz (700 ml)', 'This set includes Kamouka Server, Original Glass, Masters Dream, and Hibiki Blossom Harmony.', 4.2, 31, 16, 28),
(113, 'Asahi Draft Beer 11.8 fl oz (350 ml) x 24 Bottles + Kuroawa 11.8 fl oz (350 ml) x 24 Bottles', '【芳ばしい香りとまろやかなうまみ】アサヒ 生ビール 黒生 350ml×24本1982年に生まれたアサヒ黒生ビール。19世紀後半頃からドイツでよく飲まれはじめた濃色のミュンヘンビールの流れをくむ黒ビールで、麦芽の芳ばしい香りがあり、味はまろやかでやや甘味があることが特長です。ご家庭やビヤホールで長く親しまれていた味わいが、装い新たに復活しました。アサヒ生ビール 【飲食店で愛され続けたまろやかな味わい】アサヒ 生ビール (マルエフ) [ ビール 350ml×24本 ]1986年、低迷するアサヒビールを救った「アサヒ生ビール」。「ビールの味の違いは分からない」と言われていた時代に、人々の味覚を信じ、アサヒの王道ビールが誕生しました。今でも限られた飲食店でしか味わえない幻の生ビールをご自宅でもお楽しみください。アサヒビール、オススメのビールです。', 4.6, 9.325, 16, 94),
(114, 'Sapporo Yebisu Premium Black (11.8 fl oz (350 ml) x 24 Bottles and Yebisu Premium Ale (11.8 fl oz (350 ml) x 24 Bottles', 'Sapporo Evis Premium Black 11.8 fl oz (350 ml) Case (Pack of 24) Sapporo Evis Premium Black (11.8 fl oz (350 ml) x 24 Bottles) Uses part of the carefully selected hop \"cascade\" to achieve a rich scent and dignified bitter A plump and rich fragrance using the top fermentation method. Uses part of European malt (100% malt), long term aging.', 4.6, 10.075, 16, 95),
(115, '[Sold as a Set] [Sugar-Zero] Asahi Style Free Beer [16.9 fl oz (500 ml) x 24 Bottles] & [Beer [11.8 fl oz (350 ml) x 24 Bottles]', 'Asahi Style Free Beer (16.9 fl oz (500 ml) x 24 Bottles) \"Asahi Style Free\" is a \"sugar 0*\". Features a refreshing and refreshing drinking experience and a sturdy wheat flavor. Raw manufacturing method allows you to enjoy authentic drinking. This product is also great for those who are concerned about sugar. Based on nutritional display standards, sugar content is less than 0.02 oz (0.5 g) (per 3.4 fl oz (100 ml)) than 0 (zero). It refers to not heat treated (non-heat-treated). Asahi Style Free Beer (11.8 fl oz (350 ml) x 24 Bottles) \"Asahi Style Free\" is a \"sugar 0*\". Features a refreshing and refreshing drinking experience and a sturdy wheat flavor. Raw manufacturing method allows you to enjoy authentic drinking. This product is also great for those who are concerned about sugar. Based on nutritional display standards, sugar content is less than 0.02 oz (0.5 g) (per 3.4 fl oz (100 ml)) than 0 (zero). It refers to not heat treated (non-heat-treated).', 4.7, 8.723, 16, 96),
(116, '(Purchase Set) Indian Blue Demons (11.8 fl oz (350 ml) x 24 Bottles; Craft Beer, IPA India Pale Ale, Ale Beer & Yona Yona Ale, 11.8 fl oz (350 ml) x 24 Pieces, Craft Beer, Pale Ale, Ale Beer', 'Indian Blue Demon [11.8 fl oz (350 ml) x 24 Bottles] Craft Beer IPA Indian Pale Ale Ale Beer Ale beer with a glamorous hop aroma like grapefruit. No matter what the smell of the hop, \"Nippo!\" \"hides the intense bitterness of the hop. This bitter and deep breeze will captivate your drinks. This unique beer is perfect for fans of the avid craft beer. 3% OFF at any time by regular post service. No need to worry about forgetting an order and we will ship it regularly. Yonayona Ale, 11.8 fl oz (350 ml) x 24 Bottles, Craft Beer, Pail Ale, Alebeer An American pale ale ale beer that pursues the classic taste of craft beer. Features a fresh scent like grapefruit aromahop \"cascade\" and a gentle malt sweetness. Even after the beer was throat, we brew it so that the scent stays comfortably and stays in place. Enjoy a hop scented ale. 3% OFF at any time by regular post service. No need to worry about forgetting an order and we will ship it regularly.', 4.5, 12.569, 57, 97),
(117, 'Guinness Beer Original Glass BEER PINT M19', 'Size: 6.5 x 3.0 inches (16.5 x 7.5', 3.7, 1.5, 58, 98),
(118, '[Sold as a Set] Draft Guinness [Stout Ireland 11.2 fl oz (330 ml) x 8 Bottles] & [Stout Ireland 11.2 fl oz (330 ml) x 4 Bottles]', 'Draft Guinness Stout Ireland 11.0 fl oz (330 ml) x 8 Bottles (Amazon.co.jp Exclusive) The brand was born in Ireland in 1759. Top fermented stout beer loved by over 150 countries around the world. Floating Widget features the same rich, creamy bubbles as barrel films, and smooth throat This special set includes 8 11.8 fl oz (330 ml) cans on the web. Draft Guinness Stout Ireland 11.0 fl oz (330 ml) x 4 Bottles (Amazon.co.jp Exclusive) The brand was born in Ireland in 1759. Top fermented stout beer loved by over 150 countries around the world. Floating Widget features the same rich, creamy bubbles as barrel films, and smooth throat A special web-exclusive set with 4 11.8 fl oz (330 ml) cans and 4 original glasses (sized to pour 11.2 fl oz (330 ml) cans of draft guinness can).', 5, 5.234, 16, 99),
(119, '[Set Purchase] Kirin Chuhai Grapefruit (Chuhai 16.9 fl oz (500 ml) x 24 Bottles) & Chuhai Grapefruit, 11.8 fl oz (350 ml) x 24 Bottles)', 'KIRIN Chūhai Grapefruit Chūhai Chūhai Grapefruit (Chūhai 16.9 fl oz (500 ml) x 24 Bottles Chūhai is made with only fruit juice and alcohol, without using any sugar, flavors, or colorants. Rich and juicy taste of grapefruits that are squeezed. 28% juice The juice ratio of the juice has been paid attention to the ratio of the material that makes the material stand out. KIRIN Chūhai Grapefruit Chūhai Chūhai Grapefruit (Chūhai 11.8 fl oz (350 ml) x 24 Bottles Kirin Chūhai Grapefruit is made with only fruit juice and liquor, without using any sugar, flavoring, or coloring. It features a rich and refreshing taste of grapefruits that are squeezed. 28% juice The juice ratio of the juice has been paid attention to the ratio of the material that makes the material stand out.', 4.4, 7.196, 16, 100),
(120, 'Buddy Egg カップ、ホワイト磁器エッグカップ、サービング、沸騰した卵ホルダー4個セット One Size ホワイト dt-01407-01P', 'これらのキュートな卵カップは、あなたの柔らかい煮込み卵を食べる機会を与えます。 イギリスのスタイル。 また、卵を食べるのにも素晴らしい方法です。 これは伝統的なバタートーストの薄いストリップで、柔らかい庭でディップするのに十分な幅です。 このトースト兵士と子供たちがこの小さな儀式を愛しているということです。 主な特徴： お望みの方法で全ての卵を沸騰させます。 それぞれの朝食を5つ星の経験に変えます。 錆びたり汚れたりしない高品質の素材で作られています。 素晴らしいキッチンギフトセット、家族ギフトセット、母親へのギフトに。 パッケージ内容: キュートな磁器エッグカップ4個。', 4.1, 5.198, 59, 101),
(121, 'Zojirushi SM-ZB48-CM Water Bottle, Seamless Lid, 16.2 fl oz (480 ml), Screw, Stainless Steel Mug, Integrated Lid and Gasket, Easy to Clean, Only 2 Parts to Wash, Sand Beige', 'Born of the pursuit of ease of use, this bottle is simple and easy to clean.', 4.6, 3.78, 59, 102),
(122, 'Thermos JBR-401 WHGY Vacuum Insulated Soup Jar, 13.5 fl oz (400 ml), White Gray', 'Soup jar that can carry a variety of items from hot to cold. Round mouth that is gentle on your mouth. The same high heat retention and cold retention as stainless steel flasks. ● Make your daily lunch more enjoyable in the office or school. Uses a click-open structure. An evolved soup jar with a focus on ease of opening. When the lid is turned a little bit to release the pressure inside. The lid can also be opened by turning the lid. The parts are separated, so it is easy to wash.', 4.5, 2.99, 59, 103),
(123, 'iwaki Heat Resistant Glass, Storage Container, for Packing & Microwaving', 'Product Description   Set Contents: Full water capacity 7.8 fl oz (200 ml) (W x D x H): 3.6 x 3.6 x 2.1 inches (9.3 x 9.2 x 5.4 cm) x 2 pieces. Full capacity 15.7 fl oz (450 ml) (Width x Depth x Height): 6.1 x 2.2 inches (15.6 x 1 x 1 x 1 x 1 x 1 x 1 x 1 x 1 x 1 x 1 x 1 x 1 x 1 x 1 x 1 x 1 x 1 inches (329.5.5 x 1 x 1 x 1 x 1 x 1 x 1 x 1 x 1 x 1   Amazon.com Review   ●中身が見えるから使い忘れることもなく、上手に保存して手早くクッキング●ラップを使わず、フタをしたまま電子レンジで加熱して、そのままテーブルへ●積み重ね収納ができるので冷蔵庫でも活躍する●本体は耐熱ガラス製なので、梅干やレモンのスライスなど酸や塩分の強い食品を入れても変色しない●カレーやケチャップ料理などの色や匂い移りもしない●フタをはずせばオーブンにも使用可能', 4.6, 2.566, 59, 104),
(124, 'Thermos JNL-506 SMKKI Vacuum Insulated Portable Mug, 16.9 fl oz (500 ml), Smoked Khaki', 'A long-selling series of Thermos that has passed over 27 million solds. (*As of the end of June 2022) Stainless steel flask construction provides high heat retention and cold retention. With the same capacity range, it\'s the most lightweight and compact feel. One-touch opening. Locking ring included The mouth can be removed and washed for easy care. Can be used for sports beverages (*Do not put hot sports beverages. ) Can be washed completely (*Do not leave the product in water. )', 4.6, 3.072, 59, 103),
(125, 'Noji CBP-04G Cabbage Peeler, Julienne, 2 Blade for Sharping, Max, Dark Green', '-', 4.5, 1.2, 59, 105),
(126, 'Tanita KD-187-WH Digital 1kg Kitchen Scale (White)', 'カラフルで使い勝手にもこだわったクッキングスケールキッチンを自分好みのカラーでコーディネイト使いやすく、収納しやすい薄型コンパクト設計ボタンを押した時にも滑りにくいシリコンゴム脚付きはっきりみやすい文字高20mmのデジタル表示壁掛けも出来るフック穴付きでとっても便利', 4.5, 1.004, 59, 106),
(127, 'Sofken Aluminum Frame Slim 8, A4, Black, 002344', 'Product Description   [A4 Size] Lightweight front-opening frame made of aluminum that is easy to replace your artwork.The frame color is a clean matte black.   Legal Disclaimer   The frame corners are sharp. Please be careful not to accidentally cut your hand when installing or operating the frame', 4.3, 900, 60, 107),
(128, 'Tanita Digital Heat And Humidity Meter TT - 559', 'Product Description   If you are concerned about drying your bedroom or living room? 3 levels of comfort display that allows you to see the condition of your room (dry/comfortable/uncomfortable) at a glance. The back of the unit has a magnet and a wall hole so you can hang it freely Alarm alarm function. It has a function to display the highest and lowest humidity of the past, so you can see how high the temperature and humidity in your room (lowered). Recommended for organizing pets and ornamental plants. Displays measurements of the highest and lowest temperature and humidity from date after reset. Updated measurements will require manual reset.   Safety Warning   Since it is not waterproof, please refrain from using it in places with high humidity, or in places with water or water. The thermometer/hygrometer will display the correct scale after about 30 minutes out of the box', 4.3, 2.339, 61, 106),
(129, 'Rhythm Watch radio alarm clock Fit Wave Smart', 'Compact size but easy to use with front switch. A high-spec model equipped with a thermometer/hygrometer and calendar/Rokuyoku.', 4.2, 1.708, 61, 108),
(130, 'SHIRO Earl Grey Fragrance Diffuser Liquid 10.1 fl oz (300 ml) / Approx. 3 Months Supply (Refill Liquid + Stick)', 'The \"Room Fragrance\" has been renewed to a specification that can last for a longer period of time. Refillable liquids, sticks, and containers are sold separately. This is a fragrance diffuser refill liquid in a container that is made from 100% waste plastic. It will diffuse a pleasant fragrance in larger rooms such as living rooms and bedrooms. Please purchase this common fragrance diffuser glass base from the \"DIFFUSER CATEGORY ITEMS\" below for the common container. Use the exclusive fragrance diffuser glass for 2 uses (about 3 months) Comes with 10 Fragrance Diffuser Sticks.', 4.5, 7.2, 61, 109),
(131, 'Norco Room Fragrance Reed Diffuser Johns Blend 4.7 fl oz (140 ml)', 'Product Description   Simply insert the included stick to the fragrance and let it breathe into the fragrance diffuser. It has a strong scent spread, making it perfect for living spaces such as living rooms and bedrooms. Simply place it in a cafe style bottle design that can be used to hold pen holders and small items after use. 【Fragrance Type】: Musk Jasmine: Based on the popular white musk, this special blend is rich with refreshing sweetness and glamour. There may be individual differences in how the scent feels like. Thank you for your understanding.   Indications   This product is not edible. Please be careful of swallowing, etc. In the event that you swallow or experience any abnormalities on your body or skin during or after use, consult a physician and provide instructions before taking this product   \r\n  Ingredients   Alcohol, fragrance, solvent   Directions   Insert the included stick into the container and use it. When using, always place it in a stable and horizontal location, so be careful of accidental falls due to earthquakes and winds   See more', 4.4, 2.519, 61, 110),
(132, 'Carmate L10012 Exclusive Fragrance Oil For Spray Fragrance Diffuser, Air Freshener For Cars, Rich White Musk', 'Product Description   This is a fragrance oil exclusively for Carmate\'s Spray Fragrance Diffuser.This product is formulated to evenly release fragrance until the end.Diffuser is sold separately.   Indications   Diffuser is sold separately   \r\n  Safety Warning   This product is a fragrance oil exclusively for Carmate\'s spray-type fragrance diffuser (sold separately). Do not use on any other product   See more', 4.3, 1.141, 61, 111),
(133, 'Seiko Clock Silver Metallic Unit Size: 3.3 x 5.8 x 2.1 inches (8.5 x 14.8 x 5.3 cm), Radio Waves, Digital Calendar, Comfort, Temperature, Humidity, Display BC417S & Table Clock, 01: Silver Metallic Body Size: 3.5 x 4.8 x 1.8 inches (9.0 x 12.3 x 4.6 cm), ', 'Seiko BC417S Clock, Silver Metallic, Product Size: 3.3 x 5.8 x 2.1 inches (8.5 x 14.8 x 5.3 cm), Radio Control, Digital Calendar, Comfort, Temperature and Humidity Display. Displays the temperature and humidity of concern. It can also be used to create a comfortable room environment. ◆ Comfort Indicator The commonly known \"uncomfortable index\" has been represented in 6 stages. When the green zone feels \"comfortable\" When the blue zone is \"cold\", Many people feel \"hot\" when the red zone. Due to individual differences in the experience, Please use this product as a guide only. Standard radio wave clock. It receives radio waves with accurate time information, Clock automatically corrects display time. When using Place it on a window that is as easy as possible to receive radio waves. Avoid the location where radio waves are generated. When no radio waves are received, it is powered with quartz accuracy. ● In addition, the reception may not be able to be accurately recepted in the following locations, Please be aware of Inside buildings, cleavages and basements Close to high pressure lines, TV towers, and train rails. TVs, refrigerators, air conditioners, air purifiers, computers, fax machines, etc. Close to appliances and OA equipment For construction sites, near airports, and places with high traffic, Where there is radio interference In vehicles. (Automotive, Train, Airplane, etc. ) Close to other objects that generate radio waves noise. · Over or near metal furniture such as steel desks The reception may be possible depending on conditions outside of the area where it can be received. Seiko Clock 01: Silver Metallic Unit Size: 3.5 x 4.8 x 1.8 inches (9.0 x 12.3 x 4.6 cm), Radio Control, Digital Temperature Display, PYXIS BC411S The simple design and affordable price make it easy to use anywhere. Standard radio wave clock. It receives radio waves with accurate time information, Clock automatically corrects display time. When using Place it on a window that is as easy as possible to receive radio waves. Avoid the location where radio waves are generated. When no radio waves are received, it is powered with quartz accuracy. ● In addition, the reception may not be able to be accurately recepted in the following locations, Please be aware of Inside buildings, cleavages and basements Close to high pressure lines, TV towers, and train rails. TVs, refrigerators, air conditioners, air purifiers, computers, fax machines, etc. Close to appliances and OA equipment For construction sites, near airports, and places with high traffic, Where there is radio interference In vehicles. (Automotive, Train, Airplane, etc. ) Close to other objects that generate radio waves noise. · Over or near metal furniture such as steel desks The reception may be possible depending on conditions outside of the area where it can be received. What is the difference between the previous model (NR535W)? It does not come with a price tag, so it is recommended as a gift. Other functions are the same as the previous model.', 4.3, 4.23, 61, 112),
(134, 'Nakabayashi Fu-KWP N Certificates Frame, Gold Frame, Made of Resin', 'Lightweight design. Safe without breaking. Made of environmentally friendly materials. With a stand rod, you can also set it up in a stand. Resin (recycled PS) frame 1.1 inches (27 mm) wide 0.5 inch (12 mm) thick Transparent PET sheet. Lining: MDF Comes with hanging string and 2 stand rods Shrink pack packaging.', 4.3, 2.09, 61, 113),
(135, 'Beverly Puzzle Frame, Wooden with Gold Trim, Black, 20.1 x 28.9 inches (51 x 73.5 cm), Made in Japan', 'Product Description   Compatible Puzzle Size: 28.9 x 20.1 inches (73.5 x 51 cm) (10-T); Color: Black; Made from natural wood that provides a gentle warmth.   このメーカーについて    現代アートからペットまで。ビバリーでは、豊富なジグソーパズルをはじめ、世界中から選りすぐったゲーム&パズルコレクション、さまざまなスタイルのスタンプセットをラインアップしている。', 4.3, 2.617, 61, 114),
(136, 'Ameritex Ruffle Shower Curtain Home Decor | Soft Polyester, Decorative Bathroom Accessories | Great for Showers & Bathtubs |White,72\" x 72\"', 'のクラッシーカーテンを探していませんかをご覧になる必要はありません 究極のシャワーカーテンのご紹介フリルデザインの、このイタリアンシャワーカーテンは、フランスの田舎のチャームに、マスター風呂やパウダールームを選択します。上品にエレガントな足を覆う浴槽の場合、Fragrantソープ移動して、トルコ綿タオルその美しい外観から全体的にたっぷりとしたフリルに、このシャワーカーテンは年も楽しませてくれることでしょう。ことができのほぼすべての設定、枝調のような浴室、家族みんなの愛 購入する理由?ウィンドウカーテンと同様に、シャワーカーテン、プライバシーを確保中を仕上げして部屋のインテリア多くの場合、このシャワーカーテンは浴室,を選択するうえで、右のスタイル文を入力する際、最初に、人々が使用時の注意調整することができ任意の色でパレット限られているため洗練されたマスターとゲストトイレポリエステルの抵抗、しわ、シャワーカーテンが少なく、ドレープを施した正常な価格で湯気と押し 製品機能が導入されています。パターンフリル色:ホワイト材質:ポリエステルお手入れ方法洗濯機の冷水を使用、タンブラー乾燥機、漂白剤は使用しない防水:はい商品のスタイル:小さな花びら製品サイズ: 72 * 72 \" シャワーカーテンフックは使用しないとは、さまざまな場に最適何を待っているきっちり見せてあなたの浴室にこの美しいシャワーカーテンですスクロールすることも可能な状態にするには、ヒットカートに追加を終了し。', 4.7, 5998, 61, 115),
(137, 'Liberty Hardware Bath Unlimit Polished Chrome Astra Towel Ring 127774', 'スタイルでパーソナライズされたハンドタオル掛けにFranklin真鍮アストラタオルリングに仕上げられています。壁掛けデザインの、この洗練されたタオルリングは亜鉛ダイキャスト製メタル。クラシックなスタイルにモダンなひねりを加え、簡単に実行できたことはと組み合わせ使用バスルームアクセサリーの取り付けには付属の取付ハードウェアが付いて取り付けはシンプルです。かは、バスルームはフランクリンの従来の、めEclecticか、モダン、真鍮がハードウェアと安全を元に戻すことができる製品仕上げしています。機能要素?フック、タオルバー、ada-approvedグラブバー、およびその他の支援アクセサリー?取得エレガントなアップグレードが可能で洗練されたデザインと高品質の素材。最適なサービス業で特に、住宅などからFRANKLINごとに、真鍮は、十分なは、消費にしました。寸法: 6.1 X 2.1d × 7.1hです。亜鉛ダイカスト金属製です。から選択可能な仕上げがされています。壁掛けデザインとなっています。マウントハードウェアが含まれています。製造元は限定生涯保証が付いています。', 4.3, 8417, 61, 116),
(138, 'Kenkyujo Towels Volume Rich #003 Face Towel, Set of 5, Fluffy, Hotel Specifications, Rapid Absorption, 100% Cotton, Durable, Less Shedding, Available in 10 Colors, Japanese Technology, Smoky Blue', '-Volume Rich Face Towel Specifications: Dimensions/Weight:Face Towel: Approx. 13.4 x 31.5 inches (34 x 80 cm) / Approx. 4.6 oz (130 g).Bath Towel: Approx. 23.6 x 47.2 inches (60 x 120 cm) / Approx. 12.0 oz (340 g). Material: 100% cotton.Colors: Light Gray, White, Charcoal Gray, Smoky Blue, Sand Beige.Country of Origin: China.', 4.5, 2.5, 61, 117),
(139, 'Towel Kenkyujo Reason for Lightness #006 Bath Towel, 2-Piece Set, 7 Colors to Choose From, Japanese Technology, Lavender and Everyday Simple #001 Face Towel, 4-Piece Set, Rapid Absorption, Quick Drying, Durable, Popular, Fuzz-Free, Japanese Technology, Fa', 'Towel Kenkyujo Reason for Lightness #006 Bath Towel, 2-Piece Set, Rapid Absorption, Quick Drying, Durable, Thin, 7 Colors to Choose From, Japanese Technology, Lavender.-Reason for Lightness Specifications:Dimensions, Weight:Face Towel (Approx.): 13.4 x 31.5 in (34 x 80 cm) / 3.0 oz (85 g).Bath Towel (Approx.): 23.6 x 47.2 in (60 x 120 cm) / 7.9 oz (225 g).Material: 100% cotton.Colors: Lavender, Beige, Light Gray, White, Smoky Blue, Cool Gray, Warm Gray.Made in China.Towel Kenkyujo Everyday Simple #001 Face Towel, 4-Piece Set, Rapid Absorption, Quick Drying, Durable, Popular, Fuzz-Free, Japanese Technology, Family Pack, Mixed Colors.-These towels have a smooth, soft texture, and feature high absorbency and a heft that makes them easy to use.The pile does not flatten easily. Its texture lasts, even through repeated washings.In easy-to-use variations in size and heft. Dimensions, Weight:Hand Towel (Approx.): 13.4 x 13.8 in (34 x 35 cm) / 1.8 oz (50 g).Face Towel (Approx.): 13.4 x 31.5 in (34 x 80 cm) / 3.9 oz (110 g).Mini Bath Towel (Approx.): 19.7 x 39.4in (50 x 100 cm) / 7.4 oz (210 g).Bath Towel (Approx.): 23.6 x 47.2 in (60 x 120 cm) / 10.6 oz (300 g).Made in China.', 4.4, 3.08, 61, 117),
(140, 'Scrubbing Bubbles Flushable Toilet Brush, Floral Soap Scent, Replacement (36 Pieces), Toilet Detergent, Blackheads, Toilet Cleaning, Bulk Purchase, Disposable Detergent', 'Product Description   Flushable Toilet Brush, Floral Soap Scent, Replacement Set of 36, 24 Pieces + 12 Pieces Cleaning the inside of the toilet bowl is one of these. Toilet brush with concentrated detergent that allows you to flush the dirty brush. This brush comes with concentrated detergent, so it does not require detergents. Once you are done cleaning, you can flush it into the toilet, so you can always keep it clean. The brush is easy to put on and take off with just one touch. ● No need to touch the brush portion, you can clean your hands without dirty. Special non-woven fabric that can be washed firmly and flush into the toilet. The bow-shaped curve of the main body allows it to reach firmly behind the edges that are not visible, and the special non-woven fabric and uneven brush thoroughly removes dirt. Floral soap scent. A special handle is required for use.    Ingredients   Surfactant, Preservative   \r\n  Directions   ■ How to use a flushable toilet brush (1) Cut along the dotted line with scissors. Makes it easy to remove the brush. (2) Remove the brush with detergent. (3) 6 brushes in 1 block. Use one brush by one The brush is layered with multiple sheets. Thin brushes may cause the brush to cinch on the handle or fall off during use. (4) Attach the brush with detergent to the handle of the dedicated holder. Press the blue knob on the handle towards the tip to spread the tip of the handle. Insert the brush and pull the blue brush in the direction of your hand. At this time, pull the knob until you hear a \"click\" to secure the brush. (5) Soak the brush in the puddle for 2-3 seconds and wash inside the bowl. Press the blue brush to the tip and discard the brush in the bowl After use, the brush can also be discarded as burnable waste.    See more', 4.4, 2.748, 62, 118),
(141, 'Yamazaki Industries Mist 4237 Bathroom Rack, White, Approx. W 11.0 x D 3.7 x H 3.1 inches (28 x 9.5 x 8 cm), & 4264 Magnetic Bathroom Corner Toy Rack, White, Approx. W 13.0 x D 7.3 x H 3.9 inches (33 x 18.5 x 10 cm), Tower [Set Purchase]', 'Yamazaki MIST 4237 Bathroom Rack, White, Approx. W 11.0 x D 3.7 x H 3.1 inches (28 x 9.5 x 8 cm)Wide-rack attaches easily to bathroom walls with attached magnets.Useful as an extra shelf for dispenser bottles.Can also be used to store soaps, toothbrushes, tumblers, etc.Made with grooves for good drainage.2 convenient hooks for hanging brushes and more.Rubber type magnet that doesn’t rust and won’t scratch your walls.Easily adjustable mounting position.Yamazaki 4264 Magnetic Bathroom Corner Toy Rack, White, Approx. 13.0 x 7.3 x 3.9 inches (33 x 18.5 x 10 cm)Toy rack installs easily in the bathroom corner using magnets.Can also be used to store dispensers, facial wash tubes, bath accessories, and more.Even drains water well.', 4.4, 4.663, 61, 119),
(142, 'Yamazaki Industries Magnetic Storage Rack', '山崎実業(Yamazaki) マグネットバスルームラック ホワイト 約18X8.5X8cm タワー 収納ラック 3269石鹸・歯ブラシ・タンブラーなどの収納にも。マグネットが付く浴室壁面に簡単取り付けのラック。ディスペンサーボトルの追加棚として便利。磁石がくっつく浴室壁面に簡単取り付けのバスシリーズ。壁面を傷付けにくく、錆びないラバータイプのマグネット。貼り付け位置が簡単に調節可能。山崎実業(Yamazaki) マグネットバスルームクリーニングツールホルダー ホワイト 約W8XD6XH12cm タワー 浴室ラック お風呂掃除収納 4976強力マグネットでお風呂の壁面に取り付けるだけ! スポンジ・掃除ブラシ・スプレーボトルを一括収納! スポンジは置くだけの簡単収納! スプレーボトルが掛けられる奥行きの長いフック!', 4.5, 3.229, 61, 119),
(143, 'LEC KAKU B00178 & r+style Toilet Brush with Case (White) Compatible with Panasonic Arauno Deodorizing Toilet Pot, White (Sanitary Box) (Purchase Set)', 'LEK KAKU Toilet Brush with Case (White) Compatible with Panasonic Alawuno B00178 ● KAKU Toilet Brush is a KAKU shaped toilet brush and case with a stylish and simple design. The tip of the brush is hard rooted upward, so it can reach dirt that has been stuck to the edges of the border. A bristle plant brush that drains well. When not in use, simply hook the handle to the main unit for storage. Since the brush can be hung up, it is easy to dry without touching the bottom for hygiene. The brush has a hard tip. The whole body is soft brush and the soft scrubbing brush that is wide across the toilet bowl. The bristles are corrugated to prevent water from splashing. ● Perfect for cleaning Panasonic Aluno. When replacing the brush, please purchase the (JAN code 4903320042599 KAKU toilet brush B00179). [Handling Precautions] For toilets with soil-release processing, please check the instruction manual of the toilet. It may degrade by terpene or oil found in the skin of citrus fruits such as lemons. LEC r+style Deodorizing Toilet Pot, White (Sanitary Box) Stylish toilet supplies! Eliminates unpleasant odors in the toilet pot. One push open type. Product size (approx.): 5.3 x 5.3 x 7.9 inches (135 x 135 x 200 mm). Body: Polypropylene Lid/Ring: Styrene resin *Includes deodorizer', 4.3, 1.765, 61, 120),
(144, 'Febreze Citrus Bath Mildew Resistant 4 Pack 7mLx4', 'Product Description   Product Description: First Febreze ever! For bathrooms, ceilings, floors, hard to clean areas; Just place it in the bath, the natural \"BIO Coat\" technology spreads into every corner of the bath, and coated with active ingredients, such as ceilings, floors and difficult to clean areas, to prevent the growth of black mold. Mold and mildew resistant for baths. Includes a natural inspired bio coat hook. * Can also be hung on! Chlorine Free Value Pack of 4 * Set of 2 Reusable Hooks Ingredients and Fragrance   Ingredients   Fragrance', 4, 1.34, 63, 121),
(145, 'Sanko KQ-88 Cushion Type Toilet Seat Cover, 1.3 inches (32 mm), Rose', 'A toilet seat that stays in place by placing it on a new feel that you want to sit for a long time. The smooth feel and uneven urethane gives you a feeling that you\'ve never experienced before. The urethane has a slant that makes it easy to get up and it feels like your butt is supported and stable. The uneven surface allows body pressure to be dispersed across the seat so your butt won\'t hurt even if you sit for a long time. It can also be used by elderly people who want a seat height and sore buttocks. The adhesive backing makes it easy to stick to the toilet seat, and it will not fall off even when the toilet seat is left. The material is thick and comfortable to the touch, so even if you cut the heater on the heated toilet seat it will not get cold and it will save energy. Machine washable when dirty. (Using a net)', 4, 3.558, 61, 122),
(146, 'Marna Bath Brush', '(Easy to wear bathroom slippers) Winner of the Good Design Award (*). These bathroom slippers are light, soft, and easy to wear. The design of the upper and sole makes it easy to bend when squating. Winner of 2018 (3 ways to store) Hang it on the bar or hang it with a hook hole. It can also be placed on a flat surface at the heel for storage to suit the size and style of the bath.', 4.3, 2.178, 61, 123),
(147, 'SALONIA Speedy Ion Hair Dryer, Black, Large Air Flow, Quick Drying, Negative Ions, Lightweight, Foldable', 'Large air flow: 2.3 m3/min.Dries faster with powerful blower. When the nozzle is attached in Turbo mode, it produces negative ions that are good for your hair. Equipped with a Set mode for styling your hair with a soft warm breeze. Compact: It is foldable to a compact size that is convenient to store and carry around.', 4.3, 6.68, 61, 124),
(148, 'Braun Alcohol Cleaning Fluid for Men\'s shaver pack of 6 CCR6 CR Genuine', 'Brown Cleaning Cartridge for Electric Shaver with Cleaner Once set up, you can automatically charge and clean your own Brown original fully automatic cleaning system \"Clean & Charge\" cartridges. Removes dirt and maintains a comfortable deep shave performance at all times Lubricates to maintain shaving Fits all Brown Alcohol Cleaning System Shaver can be cleaned approximately 30 times per wash solution cartridge for normal use', 4.3, 4.19, 61, 125),
(149, 'T-fal KO4901JP Justine+ Electric Kettle, 40.6 fl oz (1.2 L), Large Capacity, White', 'Large capacity yet lightweight.Boil water in no time with this electric kettle from T-fal.Feature 1: Large capacity of 40.6 fl oz (1.2 L) for a wide range of uses, great for everyday coffee and tea, as well as cooking where a large amount of hot water is needed, such as pasta.Feature 2: Slim spout for easy control of hot water.Feature 3: Window for checking water level.Feature 4: Removable and easy to clean filter.Feature 5: Wide opening for easy cleaning.Feature 6: Easy to grip handle shape.Feature 7: Automatically switches off when the water is boiled.Size (W x D x H): 8.5 x 6.3 x 8.3 inches (215 x 160 x 210 mm); Cord length: Approx. 4.3 ft (1.3 m); Power supply: AC 100 V, 50-60 Hz; Power consumption: 1,250 W; Weight: Approx. 2.2 lbs (1.02 kg); Capacity: 40.6 fl oz (1,200 ml).-', 4.4, 4.85, 61, 126),
(150, 'Panasonic ES-WF41-S Ferrier Face Shaver, Silver', 'Rounded edge is gentle on the skin; has a thin blade of about 0.005 inch (0.12 mm).Shave neatly without water1 x rechargeable, economical and eco-friendly battery can be used.1. We recommend the ones made by Panasonic.', 4.4, 2.517, 61, 127),
(151, 'Sharp HV-R120-W Humidifier, Hybrid, White, 25000 L (7 L) / Humidification Amount: 27.2 fl oz (1,200 mL), 13.8 sq ft (33 tatami), Large Capacity Type, Easy to Clean Water Supply, Plasmacluster', 'Large capacity humidifier with a high capacity of 22.8 fl oz (1,200 mL) / h (strong driving) can be used to moisturize the atmospheric space up to a large space of approx. 13.7 sq ft (33 sq m) equivalent. This large capacity type is suitable for a wide living room or office space. (Emits plasmacluster ions in a damp wind. A large capacity tank that is easy to add water from the top, making it hard to carry. When you notice the water supply from the top, you can easily add it to the container you used to it. A new shape that allows you to pour plenty of water from the top at once; Uses a new part with a gentle curve that allows water to flow through. The shape is non-porous and easy to clean. A tray that pulls out from the front of the main unit with plenty of water supply, like a furniture drawer. It also comes with wheels for easy handling. Large capacity tray reduces the hassle of water supplying. When you fill it to full water at a time, it will humidify for about 22 hours (when driving \"weak\"). Eliminates the hassle of water supply. Easy to see water level at a glance. The water level indicator indicator on the water level in the tray is guided. You can see while pouring water and sound alerts when it is full In addition, you can check the water level window on the front of the main unit directly to check how water is drained.', 4.2, 27.163, 61, 128);
INSERT INTO `app_product` (`id`, `name`, `content`, `average_rating`, `price`, `category_id`, `supplier_id`) VALUES
(152, 'Sharp Humidifying Air Purifier Use Ag+Ion Cartridge FZ-AG01K1', '商品紹介●シャープ製空気清浄機用Ag+イオンカートリッジ。●タンクキャップに装着することで、タンクやトレーのヌメリやニオイの原因となる菌を除菌する対応機種:KC-H50,KC-A50,KC-G50,KC-Z45,KC-G40,KC-B50,KC-F50,KC-D50,KC-E50,KC-B40,KC-J50,KC-Z40,KC-Y45,KC-W45,KC-F70,KC-A70,KC-A40,KC-E40,KC-W65,KC-F40,KC-Y65,KC-B70,KC-50TH3,KC-D40,KC-500Y5,KC-D70,KC-450Y3,KI-HS40,KC-Z65,KC-50TH2,KC-45Y2,KI-GS50,KC-Z45,KC-500Y4,KC-E70,KI-HS50,KI-HS70,KC-Y80,KC-50TH1,KC-J500Y,KC-HD70,KC-H500Y,KI-JS40,KI-GX75,KI-JS70,KC-500Y5,KI-GS70,KC-G50,KC-500Y6,KI-JS50,KC-B50,KC-W45Y,KC-A50,KI-EX75,KC-65Y2,KC-500Y7,KC-L50,KC-Y45,KC-700Y5,KI-HX75,KC-500Y9,KC-Z80,KI-BX50,KC-450Y3,KI-LS50,KI-AX70,KC-700Y4,KC-650Y3,KC-500Y4,KI-FX55,KI-DX70,KI-EX55,KC-W45,KC-Y65,KC-500Y8,KI-DX50,KC-D50,KI-JX75,KC-W80,KI-LS40,KI-BX70,KI-HS50,KI-FX75,KC-65E6,KC-45Y2,KI-GS50,KC-J50,KC-50E9,KC-F50,KC-E50,KC-A70,KI-HS70,KC-Z65,KI-LS70,KC-50E8,KC-500Y6,KI-LD50,KC-F70,KC-50E1,KI-GX100,KI-JP100,KC-L500Y,KC-65Y2,KC-700Y7,KI-GS70,KC-65E7,KI-EX100,KC-700Y5,KC-B70,KI-AX80,KC-Y45,KI-JS50,KC-700Y6,KC-500Y7,KC-W65,KC-E50A1,KI-FX100,KI-750Y8,KC-700Y4,KI-HP100,KC-70E9,KI-BX50,KC-65E5,KI-AX70,KC-500Y9,KC-500Y8,KC-650Y3,KI-LP100,KI-BX85,KI-EX55,KC-50E2,KC-70E1,KC-F50E3,KI-EX75,KI-JS70,KC-70E8,KC-D70,KI-FX55,KI-LX75,KI-DX50,KI-S70Y9,KC-GD70,KI-DX70,KC-40P1,KI-DX85,KC-70E2,KC-70TH1,KI-BX70,KI-LS50,KC-700Y7,KI-H75YX,KC-E70,KI-S50E5,KI-S50E6,KC-700Y6,KI-AX80,KI-J75YX,KI-750Y8,KC-50E8,KI-L75YX,KI-FX75,KI-S50E7,KC-50E9,KI-LS70,KI-F75E3,KI-X75E4,KC-50E1,KI-X75E5,KI-X75E6,KC-50E2,KI-NS40,KI-S70E4,KI-NS70,KC-E70A1,KI-LX75,KC-F50E3,KI-X75E7,KI-S70Y9,KC-70E8,KC-70E9,KC-70E1,KI-NP100,KI-85Y40,KI-L75YX,KC-70E2,KC-E50A1,KI-S50E6,KI-S50E7,KI-S50E5,KI-N75YX,KI-NX75,KC-N500Y,KI-F75E3,KI-X75E7,KI-NS70,KC-E70A1,KI-S70E4,KC-40TH4,KC-N50,KI-N75YX,KI-NX75,KI-X75E8,KI-WF75,KI-X75E8,KI-WF100,KC-50TH4,KI-ND50,KI-NS50,KI-S50E8,KI-PX100,KI-PX75,KI-PX75,KI-PX70,KI-PX70,KI-PS50,KI-PS50,交換目安:約1年交換の目安説明:1日平均2.5Lの水を使用した場合(総使用量900Lが交換の目安です)。水質、使用環境によっては交換時期が早くなることがあります。ご注意(免責)>必ずお読みください●画像はイメージとなります。●開封後の返品はお断りさせて頂きます。●日、祝配達、時間指定不可です。', 4.3, 740, 61, 128),
(153, 'MegRhythm Steam Warming Sheets - 16ct.', 'Product Description   Medical device that can be used directly on the neck, shoulders, hips and stomach With a pleasant steam heat, it gently warms up your blood in the affected area, and thoroughly relieves chronic stiff shoulders and lower back pain. A comfortable temperature lasts about 104°F (40°C) for 5-8 hours. Skin-friendly steam Your clothes will not get wet. No smell, easy to use even when you go out. If you are in your stomach, it will activate your stomach intestinal work. Effect: Thermal effect General medical device    Indications   [使い方]シートのはくり紙をはがし、肌に直接貼ります。※首、肩、腰やおなかなどに[注意事項]次の方は使用しないでください●温熱で湿疹やじんましんが出る方●温感が低下している、または温度に敏感な方●ばんそうこう等の刺激に弱い方、かぶれた経験のある方●自分の意思ですぐにはがすことができない方次の部位には使用しないでください●打ち身、ねんざ等による熱・腫れ等の炎症部位●粘膜、顔(目のまわり等)●切り傷、すり傷、虫刺され等がある部位●湿疹、かぶれ等がある部位●貼り薬や塗り薬等を使用している部位●ひざの裏側等、シートがシワになりやすい部位次の方は医師または薬剤師にご相談ください●医師の治療等を受けている方●糖尿病の方、血行障害がある方●のぼせやすい方●発熱している方、炎症性疾患のある方●薬や化粧品等でアレルギー症状(発疹、発赤、かゆみ、かぶれ等)を起こしたことがある方●妊娠中の方商品に関するお問合せ・ご意見は「花王消費者相談室」0120-165-696 受付時間:9:00~17:00(土・日・祝日は除く)   Directions   Kao', 4.3, 1.512, 64, 129),
(154, 'Fitty 7Days Mask EX Plus, 60 Pieces, White, Slightly Larger Size', 'Product Description   Precautions for Use: ・This product cannot be used in places where harmful dust or gas may occur, or to prevent it. If you experience any skin abnormalities or symptoms such as itchy, rash, or rash, please stop using this product immediately and consult a physician. If you feel uncomfortable due to a smell, discontinue use and consult a physician. The mask has a nose fitter, so please handle with care. Since this is a mask, it cannot be used again with washing. Do not use near fire. Please be careful when driving. For hygiene and functionality, we recommend using one piece per day. Storage Notes: Store in a clean place that does not contain moisture. Keep out of reach of infants.    Legal Disclaimer   Note (Disclaimer) > Please read before stock is sold out, there may be cases of order order or cancellation. In addition, please understand that the estimated delivery date of Amazon and the estimated delivery date of our product may vary. Product packaging may change without prior notice. ※We cannot accept returns due to customer\'s preferences', 4.5, 1.419, 65, 130),
(155, 'ニチバン 救急絆創膏 ケアリーヴ Mサイズ 21mm×70mm CL100M', 'Product Description   ■ Standard emergency bandage using high-density urethane non-woven fabric. 0.8 x 2.8 inches (21 x 70 mm) (pad part 0.5 x 0.9 inches M size 100 sheets    Legal Disclaimer   Pharmaceutical: Keiko Oshima / Yasuko Hashimoto, Registered Seller: Yu Okada / Kazuyoshi Hoda, Contact Information: 06-6923-4293, Business Hours: 10:00 - 20:00', 4.6, 1.38, 66, 131),
(156, '圧倒的解放感【ZONE (ゾーン)】コンドーム プレミアム 5個入【ステルスゼリーαによる、うすさを超える気持ちよさ】', 'Product Description   -   Indications   直射日光や高温多湿のところを避けてください。 再使用禁止。', 4.3, 1.499, 67, 132),
(157, '【単品】 サガミオリジナル001 コンドーム 薄型 ポリウレタン製 0.01ミリ 5個入', 'Product Description   ゴムじゃないコンドーム。サガミオリジナル0.01の5個入。従来のゴム製ではなく、生体適合性の高いポリウレタン素材のコンドーム0.01mmの薄さを実現。※相模ゴム測定。ゴム特有のにおいが全くありません。熱伝導性に優れ、肌のぬくもりを瞬時に伝えます。表面が滑らかなので、自然な使用感が得られます。天然ゴムアレルギーの方にもおすすめです。直径36mm、長さ170mm   Legal Disclaimer   メール便でお送りいたします。　 ※他商品との同梱はできません。 山内和也（登録販売者） 営業時間 10:00-19:00 TEL 0242-85-7380', 4.3, 1.58, 67, 133),
(158, 'オムロン 上腕式血圧計 スタンダード19シリーズ HCR-7104', 'カフが正しく巻けたかどうかを確認「カフぴったり巻きチェック」正確に血圧を測定するには、カフ(腕帯)を腕にしっかりと巻くことが大切です。「カフぴったり巻きチェック」は、測定のたびに、カフが適切な強さで巻けているかどうかをチェックし、画面でお知らせします【取り扱い説明書を必ずご参照ください】【一般的名称】自動電子血圧計【禁忌・禁止】(1) 測定結果の自己判断、または自己判断による治療[症状の悪化につながることがあります。](2) けがや治療中の腕での測定[症状の悪化につながることがあります。](3) 点滴静脈注射や輸血中の腕での測定[症状の悪化につながることがあります。](4) 可燃性、助燃性ガスの近くでの使用[引火、発火または爆発の原因となることがあります。](5) 耐用期間を超えた使用[正しく測定できないことがあります。](6) 医療機関や公共の場所などでの、不特定多数の方の使用[事故やトラブルの原因になります。]【品目仕様等】外形寸法:約105(幅)× 87(高さ)× 153(奥行)mm質量:約310 g(電池含まず)対象腕周:22~32 cm使用環境条件:+10~+40 ℃ /15~90%RH(結露なきこと)/800 ~ 1060 hPa【使用上の注意】1.重度の血行障害や血液疾患のある方は、医師の指導のもとで使用してください。2.異常が発生したら、専用カフを腕から外してください。3.乳幼児や自分で意思表示ができない人には使用しないでください。4.専用カフを300 mmHg 以上加圧しないでください。5. 血圧測定以外の目的で使用しないでください。6.専用のカフ以外は使用しないでください。7.血圧計の近くで携帯電話やスマートフォンを使用しないでください。8.本体や専用カフを分解したり改造したりしないでください。9.電池の⊕⊖極を正しく入れてください。10.指定の電池を使ってください。11.長期間使用しないときは、電池を取り外してください。【製造販売業者及び製造業者の氏名又は名称等】製造販売元:オムロンヘルスケア株式会社電話:0120-30-6606(オムロン お客様サービスセンター)【使用目的又は効果・効能】健康管理のために収縮期血圧及び拡張期血圧を非観血的に測定すること。', 4.3, 11.57, 68, 134),
(159, 'Iris Ohyama PK-NV40LL Non-Woven Pleated Mask, Large, Pack of 40, Individually Packaged, White', 'The filter cuts out 99% of pollen, virus droplets, etc.Double ohm pleats keeps the space around your mouth clear so you can easily converse.Soft round ear straps prevent ear pain.(Earstring: 0.15 inch (4 mm) wide)', 4.2, 1.082, 69, 135),
(160, '【SKYN (スキン) Premium】コンドーム 5個入 【柔らか素材で自然な使用感】 不二ラテックス', 'Product Description   ●この製品は、添付文書を必ず読んでからご使用ください。●コンドームの適正な使用は、避妊に効果があり、エイズを含む他の多くの性感染症に感染する危険を減少しますが、100%の効果を保証するものではありません。●この包装に入れたまま、冷暗所に保管してください。また、防虫剤などの撥発性物質と一緒に保管しないでください。●コンドームは1回限りの使用とする。薄さの時代から素肌のような滑らかさの時代へ。ポリイソプレン技術採用により、本物の皮膚のようなきめ細やかさと「装着していることをわすれてしまう」程の自然な感触を実現。柔らかく包み込む軽い肌触りが特徴のコンドーム。着色料不使用、ゼリーつき。   Legal Disclaimer   メール便でお送りいたします。　※他商品との同梱はできません。山内和也（登録販売者） 営業時間 10:00-19:00 TEL 0242-85-7380', 4.3, 1.196, 67, 136),
(161, 'Neutrogena Norway Formula Intense Repair Hand Cream For Super Dry Skin Unscented 1.7 oz (50 g)', 'Product Description   With a single coat, it has a high concentration of 99% pure (*2) glycerin (*1) for fast care even on ultra dry and rough skin. It provides excellent moisturizing and moisturizing, smooth and soft skin. (*1) Moisturizing ingredient (*2) Manufacturer Ratio    Ingredients   Water, glycerin, cetearyl alcohol, phenoxyethanol, sodium cetearyl sulfate, ethylhexyl glycerin, palmitic acid, sodium stearate, tocopherol   \r\n  Directions   How to Use: One time use is sufficient for pearls. No sticky feel Can be used approximately 200 times.    Legal Disclaimer   Note (Disclaimer) > Please read before stock is sold out, there may be cases of order order or cancellation. In addition, please understand that the estimated delivery date of Amazon and the estimated delivery date of our product may vary. Product packaging may change without prior notice. ※We cannot accept returns due to customer\'s preferences   See more', 4.3, 955, 70, 137),
(162, 'Professional Hand Cream 2.1 oz (60 g)', 'Product Description   If it does not conform to your skin, please discontinue use. We recommend that you use it as soon as you open it. Keep the opening and cap clean. Made with only natural moisturizing ingredients, so you can continue to work as it is before or during cooking. The main ingredient is \"hybrid sunflower oil\", which contains a lot of oleic acid similar to human sebum, so it is not sticky even though it is moisturized.    Ingredients   Water, glycerin, calibite ken, jojojoba oil, squalane, hybrid sunflower oil, kedachian aloe extract-2, tocopherol, cinoxtiol, ethanol, xanthan gum', 4.4, 2.28, 70, 138),
(163, 'SHIRO Savon Hand Serum, 1.1 oz (30 g) (Renewed) Hand Cream', '(Hand serum that wraps your hands and skins) This hand serum contains jojoba oil that rejuvenates plenty of moisture and locks in moisture, 2 kelp kelp, and 3 shea butters. The watery texture blends well with a moisturized, smooth texture. Concentrated care for dry and rough hands due to household chores and hand washing. (*1) Jojoba Seed Oil *2: Gagame extract (liquor/moisturizing ingredients have been changed to gagome extract, and the feeling of use. *3 Shea fat (both moisturized)) (A refreshing and gentle sweetness) The new Sabon enhances citrus and fruity aromas like lemon, orange, and black currants on top notes for added freshness. The last note reduces sweetness of the sweet sweetness, and the refreshing and gentle sweetness that is unique to the savon scent, making it easy to use for all ages and seasons. We have improved not only the fragrance, but also the scent and texture of each product. (Reborn Sabon and White Lily make it more pretty) The scent of \"sabon\" and \"white lily\" has been loved by many customers for many years. In September 2022, some fragrances* has been renewed to create a more enjoyable fragrance. *The scent of the target \"Lilliar\" has been reported that it may become allergen and the usage limit has changed. We have not been able to report issues such as health damage to SHIRO products. [How to use] Please use an appropriate amount to fit your hands and fingers in areas that are concerned about drying. Contents: 1.1 oz (30 g); Fragrance: Top: Lemon, Orange, Black Currant, Lychee. MIDDLE: Rose, Jasmine, Lily and Plum Last: Musk, Amber, Woody and Sweet [Ingredients] Water, BG, Glycerin, Shea Oil, Fragrance, Occyl Dessil, Isostearate Waterborne Castor Oil, Sake Peple, Aloe Vera Leaf Extract, Squalane, Jojoba Seed Oil, Diethyl Pentanate, Waterborne Lithin, 1,2-Hexandiol , Xantanga M, (Hydroxyethyl Acrylate, Sodium Acrylate, Sorbitane Isostearate, Polysorbate 60, Carbomer, Arginine, Tocopherol, Phenoxyethanol', 4.4, 4.6, 70, 109),
(164, 'Kobayashi Pharmaceutical Smooth Stick, Intensive Care for Sleeping Aloe Extract, 1.1 oz (30 g) x 2 Packs (Bonus Included)', 'Product Description   A stick cosmetic oil that moisturizes and smoothens the roughest heels. Natural moisturizing ingredient olive oil; Contains squalane. Moisturizes and conforms to your skin. Olive oil This is a stick type with oil that is easy to apply, so your hands won\'t get dirty. Can be used before sleeping or during the day to care for areas that are concerned about dryness, such as heels, elbows, and knees. When applied to both heels, it can be used for approximately 2 months. Unscented and uncolored.   Ingredients   Vaseline, Castor Oil, Squalane, Olive Oil, Celesine, Beeswax, Citanol, Microcrystalline Wax, Behhen Acid, Kadatialoe Leaf Extract, Komenuka Oil, BHT, Tocopherol Acetate', 4.2, 1.98, 70, 139),
(165, 'Zane Cream E 3.5 oz (100 g) [Quasi-drug]', 'Product Description   For skin stiffness and firmness. Medicinal cream with a lasting moist feel. Vitamin E and lecithin improve crinkle skin. It is smooth and non-sticky. Use it after water work or after a bath. Also recommended after hair treatment and bearding. It can be used for a wide range of purposes, such as hands, elbows, knees, face, and neck. It has been renewed to a mild scent. Since its launch, it has been loved by everyone over the 66th anniversary.   Ingredients   d-α-tocopherol (natural vitamin E), dipotassium glycyrrhizinate   \r\n  Directions   Please use it on areas that are prone to stickiness like hands, elbows, knees, face and neck, after washing your face, bath, before sleeping, and after a beard   Legal Disclaimer   Note (Disclaimer) > Please read before stock is sold out, there may be cases of order order or cancellation. In addition, please understand that the estimated delivery date of Amazon and the estimated delivery date of our product may vary. Product packaging may change without prior notice. ※We cannot accept returns due to customer\'s preferences   See more', 4.4, 1.38, 71, 140),
(166, 'Medicine Odor-Eaters Foot Outside Opposite Solution Insole for Women 22 cm ~ 25 cm 1 Feet', 'Product Description   Please cut a slightly larger line at first, and adjust to fit your shoes. Please make sure to lay the side with lines facing down. If it gets dirty, please comb the damp cloth and wipe it off. 2 cushioning odor resistant footbed that keeps your foot in shape. Excellent antibacterial deodorizing properties.    メーカーについて    オドイーターは、1886年に創業した小林製薬株式会社のフットケア製品。小林製薬株式会社は、家庭用医薬品、日用雑貨品などの販売や医療機器事業をてがけており、さまざまな医薬品、ダイエット食品、熱冷却シート、芳香・消臭・脱臭剤などを製造・販売している。   Ingredients   Surface: Polyester Padding: Back of Polyurethane Foam   Legal Disclaimer   We will ship by Mail-bin and non-standard mail. Deliveries will be shipped to the post or newspaper. We are not responsible for any issues such as lost, damaged or lost of the product after it has been shipped. We will refuse order cancellation after shipment for any reason. Thank you for your understanding', 4, 1.31, 70, 141),
(167, 'Saff Instant Dry Yeast (Red Label for Low-Sugar Bread) 4.4 oz (125 g)', 'Product Description   This yeast has excellent stability and is less than half the raw yeast for excellent performance and sustainability. Use with low sugar content such as French bread and bread (sugar content: 0-15% est). Nutritional Ingredients Moisture: 0.1 oz (3.5 g), Protein: 1.6 oz (43.1 g), Fats: 0.2 oz (5.2 g), Carbohydrates: 1.6 oz (43.2 g), Ash: 0.2 oz (5.0 g) (per 100 g)   Ingredients   Product Name: Instant Dry Yeast (Red Label for Low Sugar Bread / Pollining/Sugar Content 0-12%) Ingredients: Yeast, emulsifier (sorbitan fatty acid ester), V.C Nutritional Ingredients Display: Medium 3.5 oz (100 g) Energy 392 kcal, Protein 43.1 g, Fat: 5.2 g, Carbohydrates. 5.0 minutes g, moisture 3.5g   \r\n  Directions   Great for low sugar dough. Use more for pastry bread   Safety Warning   Dissolve directly into powder or in warm water (around 30 degrees Celsius). Do not touch cold water directly. After opening, to prevent moisture absorption, insect damage, and odor, please seal the bag and store it in a refrigerator and use as soon as possible   Legal Disclaimer   Contains 1.5% sorbitan fatty acid ester This product has a expiration date of 2 years after production. The remaining expiration date of the product that you receive from our store may vary depending on the manufacturer\'s availability and shipping conditions. We strive to deliver products with a shelf life of over 3 months. Please understand this before making your purchase   See more', 4.5, 1.025, 72, 142),
(168, 'Banhouten Gran Cacao 20P', 'Product Description   Milk cocoa with authentic taste. The new formula allows you to enjoy the original flavor of pure cocoa. Thick cocoa with 1.8 times the cocoa powder. You can enjoy the original mellow scent and flavor of Cacao. Cocoa contains cocaopolyphenols that are important to maintain health! Handy stick type for office when you don\'t have time. Relax easily and anytime. Easy to pack individual packaging type. (Stick & Instant Cocoa & Large Capacity)   Ingredients   Sugar (made in Japan), cocoa powder (22% to 24% cocoa butter), food made from milk etc., salt, caramelized sugar / emulsifier, pH regulator, flavoring, stabilizing agent (CMC), fine silicon oxide (some contain dairy ingredients)   \r\n  Safety Warning   Please be careful when handling with boiling water. Consume immediately after opening. (Shown in individual package)   See more', 4.4, 1.109, 73, 143),
(169, 'Tomiz Hardy Rice from Hokkaido, Haruyokoi', 'Product Description   商品紹介 蛋白12.0±1.0% 灰分0.45±0.05% 「はるゆたか」の後継品種「春よ恋」100%。 ■名称:小麦粉 ■原材料名:小麦 ■保存方法(未開封):直射日光、高温多湿を避け冷暗所に保存 ■アレルギー:特定アレルギー(7品目):小麦 ■注意事項:蛋白及び灰分の数値は実績値です。原料事情により変動する場合がございますので予めご了承下さい。 原材料・成分 小麦   Ingredients   小麦', 4.4, 2.44, 74, 144),
(170, 'Homemade Edible Pigment Set of 4 Colors (Blue, Red, Green, Yellow) Kyoritsu Food, 5.5 grams (x1)', 'The pigment is vibrant in small quantities. It can be used for cake decorations, jelly, mochi, Japanese sweets such as red rice, pickles, cooking, etc. The included clear spoon is approximately 0.004 oz (0.1 g). Depending on the usage, the amount of use may change, but the ingredients are about 1 spoon of the included spoon per 3.5 - 10.6 oz (100 - 300 g). (1/1000 - 3000 materials are standard. )', 4.3, 900, 75, 145),
(171, 'MONIN Caramel Syrup [Non Alcoholic Ingredient for Coffee/Cocktail Loved by Professional Baristas and Bartenders] [Storage at Room Temperature] 8.8 fl oz (250 ml) x 1', 'Product Description   Monan non-alcoholic syrup loved by professionals around the world The gentle sweetness of caramel is characteristic of its kindness, flavor, and fragrance. Golden Brown. The World Leader in Non-Alcoholic Syrup Used by cafes, restaurants, bars, and hotels in more than 100 countries around the world. The natural flavor of the material. High quality sugar syrup is used with various fruits, spices, nuts, flowers, berries and more. Over 100 rich lineups You can easily create your own menu throughout the year. It can also be stored for a long period of time and will always maintain a fresh flavor High concentration for low cost The authentic taste remains intact; it can reduce the amount of use and is highly cost-effective. Born in 1912 in the beautiful ancient city of Bourges in the heart of France, Monan Syrup is a family owned brand that represents France with quality and sales. Starting from the 1930s, we brought a new cocktail boom throughout Europe as a European mixed drink, and later expanded to America to create a flavored coffee boom. It is also used in a number of honored award winning cocktails in cocktail competitions hosted by I.B.A. (International Bartender Association). The secret to this success is Monan 3rd generation syrup experience and a new idea that leads the test of time and time and above all, the commitment to the highest quality. Today, with its French headquarters, its branch and factory in Malaysia, and UAE, we supply the amazing products and abundance of information throughout the world, and its famous company is used in cafes, restaurants, bars, hotels and more. Monan Syrup is recognized as an international brand that is trusted by professionals around the world, with high concentration and low cost, long term preservation and always fresh flavor. Since 1996, Nissan and France Trade Co., Ltd. has been committed to improving the beverage culture through various products and recipe proposals for bars, hotels, cafes, restaurants, taverns, and confectionery markets.   Ingredients   Sugar/flavoring, acidulant, caramel pigment', 4.1, 1.037, 76, 146),
(172, 'WILTON Icing 8 Color Kit 0.5oz', 'Product Description   ジェルベースのアイシングカラー(食紅)です。クッキーやケーキのデコレーションにお使いいただけます。8カラーセット内容:リーフグリーン、レモンイエロー、クリスマスレッド、スカイブルー、ブラウン、オレンジ、ピンク、バイオレット   Ingredients   原材料はパッケージに表示', 4.3, 2.5, 75, 147),
(173, 'Pure Cocoa, Made in the Netherlands, Famous Brands, 17.6 oz (500 g), Tomizawa Shoten Cocoa Powder, Cocoa Powder, Pure Cocoa, Sugar-free, Sugar Off, High Cacao, Commercial Use', 'Product Description   Fat 22-24% cocoa powder. No sugar or milk ■Name: Cocoa Powder (Cocoa Butter 22-24%) ■ Raw Material Name: Cacao Beans ■Storage Method (Unopened): Avoid direct sunlight, high temperature and high humidity and store in a cool and dark place ■ Allergies: Specific Allergies (7 items): None ■ Contamination: This product manufacturing plant includes wheat, dairy, eggs, buckwheat, peanuty, peanuty, peanuty, peanuty, shrimp, and crab, and crab.   Ingredients   cocoa powder', 4.4, 2.002, 77, 144),
(174, 'Alishan Vanilla Extract 2 fl oz (59ml)', 'Product Description   Vanilla Beans are infused with water and alcohol to extract vanilla liquid. It can be widely used as pastry ingredients, muffins, cookies, cakes, ice cream syrups, mousses, coffee, tea, smoothies, etc. Please note that the inner lid is not attached.    Ingredients   Alcohol, Vanilla Bean Extract', 4.4, 1.8, 78, 148),
(175, 'Kitano Kaori 100% Domestic Strong Powder, 5.5 lbs (2.5 kg), Tomisawa Shoten Bread Crumbs Strong Flour, Made in Hokkaido, Domestic, Commercial Use, Kitano Kaori', 'Product Description   Protein 11.5±1.0% ash content 0.50±0.05% This flour has a slightly yellowish texture and is characterized by its chewy texture. For bread, table rolls, pastry bread, etc. ■Name: Flour; Ingredients: Wheat. ■Storage method (unopened): Avoid direct sunlight, high temperatures and humidity. ■Allergies: Specific allergies (7 items): Wheat. ■Caution: The number of protein and ashes is a proven value. Please be aware in advance that there may be variations depending on the material circumstances.   Ingredients   wheat', 4.4, 1.895, 74, 144),
(176, 'Pioneer Kikaku Shirakami Kodama Yeast, Dry G', 'Product Description   Pure wild yeast discovered from the White God Mountains of the World Natural Heritage Site. This natural yeast has strong fermentation power, and does not require seeding. It contains a large amount of sugar trehalose, which exist in nature, resulting in a soft, natural sweetness with less sugar. Does not contain any additives such as fermentation promoters. White God Kodama Yeast Dry G is a granular type that can be mixed with powder without dissolving in water. This product is a 5g disposable package that is perfect for home bakeries. Use 1 bag (0.2 oz (5 g) of flour for 1 dozen of bread.   Ingredients   yeast   \r\n  Legal Disclaimer   Shelf Life: February 3, 2014 for near expiration date. Consume as soon as possible   See more', 4.3, 1.486, 72, 149),
(177, 'Tomizawa Shoten TOMIZ Dolce Soft Flour (5.5 lbs (2.5 kg) / Wheat Flour, Made in Japan), Hokkaido Wheat (For Confectionery/Cake/Castella), Commercial Use', 'Product Description   Product Introduction: Protein 9.3±0.5%, Ash 0.34±0.03%, Hokkaido wheat. ■Name: Flour; Ingredients: Wheat. ■Storage method (unopened): Avoid direct sunlight, high temperatures and humidity. ■Allergies: Specific allergies (7 items): Wheat. ■Caution: The number of protein and ashes is a proven value. Please be aware in advance that there may be variations depending on the material circumstances. Raw Materials/Composition: Wheat.   Ingredients   wheat', 4.5, 1.485, 74, 144),
(178, 'Morinaga Seika Amazake Powder Type, 3.5 oz (100 g) x 3 Packs', 'Product Description   Everyday Sweet Sake that is gentle on your body. Powder type made using carefully selected liquor cream. Converts to Concentrated Intake for Versatility Improved quality that dissolves easily in hot water, and also in water. On the reverse side, the recipes are easy to understand and easy to follow with illustrations. For milk, yogurt, toast, miso soup.   Ingredients   Sake cream (made in Japan), sugar, dextrin, salt, rice malt powder, flavoring, stabilizer (xanthan gum), sweetener (aspartame, L-phenylalanine compound)   Legal Disclaimer   This product contains liquor crease, so please be careful when driving, children, those who are sensitive to liquor, pregnancy or nursing. Use alcohol less than 1% (when drinking); Caution: Please be careful when cooking or drinking. When the dust sticks to the zipper, it becomes difficult to close, so please remove the powder, and close it completely', 4.3, 1.3, 79, 150),
(179, 'Yotsuba Hokkaido Buttermilk Powder, 2.2 lbs (1 kg)', 'Product description   Made from 100% Hokkaido raw milk, this dairy product is rich with milky flavor, concentrated and dried butter milk that occurs when making butter from cream. By using it instead of powdered skim milk, you can give a more supple milk flavor. The \"phosphate\" in the buttermilk powder, has a high emulsification effect, which increases the amount of water in the dough, promoting gluten netted tissue, improving fluffiness, and a soft texture. In Europe and America it can be used for cooking soup and sauces, and it can also be used as a food ingredient for scones and pancakes because it has a light and fluffy finish. Breast fat content: 6.0% or more, milk solid: 95.0% or more. [How to make bread] Use Yotsuba Hokkaido Butter Milk Powder instead of skim milk as a bread ingredient, to increase the milk flavor and increase the fullness of the dough (loaf volume) for a soft texture. Formulation examples Yotsuba Hokkaido Butter Milk Powder, 0.4 oz (12 g) Strong powder: 8.8 oz (250 g). Shortening: 0.4 oz (10 g) Granulated sugar: 0.6 oz (17 g) Salt: 0.2 oz (5 g) Dry yeast, 0.1 oz (2.8 g). Cold water: 6.1 fl oz (170 ml). Recipe provided: Yotsuba Milk Co. Ltd. ■ Ingredients display (nutrition value per 3.5 oz (100 g)) Energy: 390 kcal. Protein: 1.1 oz (31.0 g). Fats: 0.2 oz (7.3 g). Carbohydrates: 1.8 oz (50.1 g). Salt Equivalent: 0.05 oz (1.2 g). Calcium: 960 mg (This display value is approximate. ) ■About allergy display of this product Ingredients used for: Dairy Other Allergies about this item: Not Specific    Ingredients   Raw Milk   \r\n  Safety Warning   Please use as soon as possible after opening, regardless of the shelf life. Store in a cool dry place as it is easy to wick away moisture after opening   Legal Disclaimer   Depending on the timing of the information updates may differ from the contents listed on the product label. Please check the product label carefully before using. If you have any concerns, please email us. (Updated November 28, 2012)   See more', 4.3, 2.819, 80, 151),
(180, 'DHC 国産パーフェクト野菜 プレミアム 30日分 (120粒)', 'Product Description   100% domestic vegetables with 32 types of lactic acid bacteria and yeast. Supplement for lack of vegetables \"Perfect Vegetable Premium Made in Japan\" is a supplement containing 32 types of vegetables that are popular as a healthy vegetables, including spinach, carrots, and pumpkin, as well as green and yellow vegetables that are popular as healthy vegetables. All vegetables that are made in Japan. The nutrients required by the body are basically intake from a daily diet, but eating various vegetables in a balanced manner. Perfect Vegetable Premium Made in Japan, you can efficiently take nutrients from a wide variety of vegetables. In addition, we have added more than 1 trillion pieces per day with lactic acid bacteria and yeast. Recommended not only for those who are concerned about lack of vegetables, but also for those who tend to lose their meals and want to maintain a clean appearance. Do not chew with cold or warm water and consume as is. As this product is made of natural materials, there may be slight differences in the color tone of the product. This is not color calibrated and does not affect the content or quality.    Ingredients   Name: Vegetable processed food; Ingredients: Vegetable powder (made in Japan), broccoli, purple, onions, sweet potatoes, pumpkins, corn, cabbage, carrot, simon potatoes, cabbage, radish leaf, mulberry leaf, garlic, ginger, parsley, sago, soup rice, etc. Celery, bright Sunleaves, Goya, Wagwood, Radish, Asparagus, Red Shiso, Edamame (soy), Okra, Yamamo), Barley Grass Leaf Extract, Digestive Dextrin, Lactic Acid Bacteria, Yeast Fermentation Fermentation Powder (including dairy component), Cellulose, Glycerin Fatty Acid ester, Fine Silicon Dioxide, Vitamin E. 1 Grain Weight: 1.8 oz (520 mg x 120 tablets); Nutritional Content Display: 4 tablets per day: 6.6 kcal, Protein: 0.23 g, Fat: 0.12 g, Carbohydrates 0.48 g (sugar: 0.82 g, dietary fiber: 0.66 g), Salt Equivalent: 0.0003 g, Vitamin E 0 mg. Vegetable Powder (32 Type*) 1,730 mg, lactic acid bacteria and yeast fermentation powder, 1 mg (lactic acid bacteria + 1 trillion yeast) *Includes barley wakaba extract', 4.2, 990, 81, 152),
(181, '山本漢方製薬 黒ごま黒豆きな粉400g 400g', 'Product Description   Starting with kina powder, black tumba beans, black sesamin, calcium, germinated brown rice, soy milk. 6 balanced formula. It can help you maintain your family\'s health.    Legal Disclaimer   Advertising Documents Cosmo, Ltd. (Registered Seller Name), Shigeki Hayakawa (Phone) 06-6378-3660 (Business Hours) 10-17 Business Days', 4.2, 798, 82, 153),
(182, 'ハマダコンフェクト バランスパワーミニ アーモンドカカオ 64g', 'Product Description   ●16g（1/4袋）当たりカルシウム230mg、鉄2.3mg、食物繊維1.4gを配合しています。●アーモンドをトッピングしたサクッと香ばしいミニカカオクッキーです。●保存に便利なチャック付きです。●1日当たりの摂取目安量:1日当たり約16g（1/4袋）を目安にお召し上がりください。●1日当たりの摂取目安量に含まれる機能に関する表示を行っている栄養成分の量が栄養素等表示基準値(18歳以上、基準熱量2.200kcal)に占める割合:カルシウム33% 鉄33％●栄養機能食品（Ca・Fe）●ロカボ対応商品   Ingredients   小麦粉（国内製造）、砂糖、ショートニング、マーガリン、アーモンド、小麦全粒粉、ココアパウダー、澱粉、卵、準チョコレート、麦芽糖、難消化性デキストリン、食塩／卵殻Ｃａ、結晶セルロース、乳化剤（大豆由来）、ピロリン酸鉄、ナイアシン、パントテン酸Ｃａ、香料（乳由来）、ビタミンＢ2、ビタミンＡ、ビタミンＢ6、葉酸、着色料（カロチン）、ビタミンＤ、ビタミンＢ12', 4.5, 394, 82, 154),
(183, 'Hamada Confection Iron Plus Collagen Wafers, 36 Pieces', 'Product Description   Iron Plus Collagen Wafers contain 5.0 mg of iron in 2 sheets. It also contains collagen, calcium, and vitamin D. For those who tend to lack iron, you can easily eat it every day. A crisp, fragrant cocoa flavor wafer. This product is compatible with Rocabos with a sugar mass of 0.4 oz (10 g) or less. Estimated intake per day: Please consume 2 pieces per day. The amount of nutritional ingredients displayed on the functions contained in the daily intake is accounted for the nutritional value (18 years and older, 2.200 kcal). Nourishing functional food (Fe).   Ingredients   Flour (made in Japan), vegetable oil, glucose, cocoa powder, sugar, lactose, collagen peptide (contains gelatin), salt, starch/egg shell calcium emulsifier (derived from soy), flavoring, iron pyrophosphate, expanding agent, vitamin D   \r\n  Safety Warning   They are manufactured in common facilities including peanuts. (Specific raw materials are listed. )   See more', 4, 1, 82, 154),
(184, 'Asahi Group Food Cream Brown Rice Blanc Blueberry, 2.5 oz (72 g) x 6 Packs', 'Product Description   This cream sand-type nutritional supplementing food is tasty and easy to eat. Blueberry cream is sanded with a zakzaku fabric that is kneaded with brown rice and wheat bran. Formulated with protein 0.4 oz (10 g) (per product), 10 vitamins, dietary fiber, calcium, and iron.    Ingredients   Shortening, flour, sugar, all-blan (wheat jacket, sugar, etc.), soy protein, blank flakes (rice, whole wheat, sugar, wheat jacket, etc.), whole egg, brown rice flour, blueberry processed goods, glucose, inulin, blueberry juice powder, salt, sour cream extract powder (including dairy component), egg shell calcium cellulose, trehalose, glycerine, acidulant, mium carbonate. g, emulsifier, fragrance (derived from almonds), ferrous pyrophosphate, antioxidant (V.E), coloring (koji malt, gardenia), niacin, V.E, calcium pantothenate, vitamin A, V,B2, vitamin B6, vitamin B1, folic acid, vitamin D, vitamin B12', 4.3, 930, 82, 155),
(185, 'Otsuka Pharmaceutical Calorie Mate Blocks, Chocolate, 4 x 9 Packs', 'Product Description   A balanced nutrition that can easily replenish 11 types of vitamins, 5 different minerals, proteins, fats, and sugars. 1 piece contains 4 pieces of 100 kcal. Contains approximately half the amount of vitamins needed for a day. (*The amount required for a day is based on the 2015 indicated nutrients, etc.); We take care of the European aromatic chocolate sensation, and have been finished so that you can enjoy the afternoon after eating.   Ingredients   Flour (made in Japan), chocolate spread, sugar, egg, almond, powdered skim milk, soy protein, wheat protein, salt, starch/sodium caseine, processed starch, flavoring allergens (within 28 items) wheat, egg, dairy ingredient, almond, soybean', 4.5, 2.1, 82, 9),
(186, '国産たまねぎ皮粉末100%', 'Product Description   This product is a powder of 100% onion peel, which has been decompressurized and dried to prevent the skin from damaging the unique flavor of the shade, Hokkaido. The onion skin contains many nutrients you want to take every day, such as a type of polyphenol quercetin and abundant dietary fibers. This powdered onion peels powder is easy to use when melting in hot water to use as an onion tea. Flavor of onion enhances the taste of your food. Please consume 0.1 - 0.1 oz (3 - 4 g) per day. Dissolve the desired amount with warm water and sprinkle a spoon of soup or miso soup. You can also use it as a primer for curry and meat dishes, or as a seasoning for fried and dressing.    Legal Disclaimer   We will ship by Mail-bin and non-standard mail. Deliveries will be shipped to the post or newspaper. We are not responsible for any issues such as lost, damaged or lost of the product after it has been shipped. We will refuse order cancellation after shipment for any reason. Thank you for your understanding', 3.8, 1.18, 82, 156),
(187, 'Adidas adac-11404-1 Hardware Ab Wheel', 'This is the Adidas Ab Wheel. 2 soft grip handles have a diameter of 7.1 inches (18 cm) wheel; Maintains posture and supports core muscles that support movement; Helps improve strain; Great for various occasions such as fitness, exercise, and the gym.', 4.4, 6.646, 83, 157),
(188, 'Agatsuma Anpanman Pyon Pyon Jump', 'Product Description   Fun for indoor play. Cute design trampoline!   Safety Warning   該当なし', 4.4, 8.558, 84, 158),
(189, 'asics(アシックス) クリアートビナワ (91-130)', '親指のポジションを誘導するFグリップ。寒冷地でもクセがつきにくく、手首のアクションを伝えやすいクリアーロープ。適度な伸びのある新素材ロープで優れた操作性を実現。回転子：回転子はロープの（L）調整が可能ロープの回転性と高耐久性を実現しました。', 4.3, 1.015, 85, 159),
(190, 'Asics Nemu Tobi Nawa Junior Jump Rope, INF Certified, 91 - 240', 'Since it is not eligible for a free shipping campaign, it is sold separately【Manufacturer/Usage】Asics Tobinawa JNF Japan Jump Rope Competition Federation Approval【Junior】Product Details】The name space adopts a transparent cover that can be removed with a single touch, and the grip adopts a 3D oval F-grip that directs the thumb into the proper position and is highly rotator to ensure a strong grip. Rope (L) adjustment. Yes * The Twinawa string is the same color. Country of Origin: Japan Material: Grip: (Body) Olefin Resin, (Cover) Styrene Resin Rope: Polyurethane; [Size] Grip: (L) 6.3 inches (16 cm), Rope: 0.1 inches (3.5 mm) Diameter, Total Length: 8.9 ft (2.7 m) [Manufacturer Order] This product may be sold out because it is arranged by the manufacturer. Please check your order by email for inquiries regarding stock or delivery date.', 4.3, 1.001, 85, 159),
(191, 'プレスビー スッキリバンド 酔い止めバンド つわりバンド ツボ指圧リストバンド シーバンド 乗り物酔い つわり 吐き気 緩和 大人用 ブラック', 'Indications   車酔い、船酔い、つわりを緩和します。', 3.7, 2.8, 84, 160),
(192, 'Mizuno C3JHI90506 Healthy Interior, Le Priesquat, Health Training Equipment, Designed to Fit Interior, Front Thighs, Buttocks, Calves, Gray', 'Gently support tight squats by sitting, slowly rising and lowering The Le Plier Squat has been renewed. Palm fiber is used in the seat cushion section and reclaimed resources. The palm fiber cushion is resistant to flattening and increases durability. It has been reborn into a product that can contribute to the earth-friendly SDGs. Recommended for: ~ I want to walk with my feet forever! We want to aim for healthy leg beauty. You want to aim for a beautiful hip line. - Sitting and standing motion on the chair makes it easy to squat at EFFECTIVE! You can train your thighs and butt efficiently by simply sitting and standing motion. When working with a heavy rise, the leg part gas cylinders are helped by the assistance. ■ Effectively train your thighs and buttocks. For fat burning, hip lifting and walking motion, the quads (thigh muscles in the front of the leg) and the glutes (butt muscles). is important. ■ With or without Le Plier squat... The exercise effect on the thigh and butt is more effective than regular squats! Even though it is easy to train!', 3.7, 10.5, 84, 161),
(193, 'Freely Carpet, Rug, Non-Slip, Choose from 26 Colors, 78.7 x 98.4 inches (200 x 250 cm), Approx. 49.5 ft.² (3 Tatami Mats), Lightweight Design, Made of Ultra-High-Density Microfiber Fabric, Fully Washable, All-Season Comfort, Solid Beige', 'Specifications:　Product Name: Washable microfiber rug mat.　Size: 78.7 x 98.4 inches (200 x 250 cm).　Materials: Outer Material: 100% polyester. Inner Material: Polyurethane. Underside: Non-woven fabric (w/ PVC non-slip dots).　Other: Fully washable; can be used with floor heating and hot carpets.', 4.1, 3.98, 59, 162),
(194, 'Yamazen CFM-1080(P) Chair Mat, Carpet, Width 39.4 x Depth 31.5 inches (100 x 80 cm), Scratch and Stain Resistant, Clear, Work from Home', 'This chair mat protects your floor from scratches and stains! Water resistant material and heat resistant; Clear material makes it perfect for any room or interior. A protective mat that protects the floor surface of your desk or table from scratches and dirt. Clear material that does not ruin the image of your room. Can also be used under dining chairs Made of PVC material that can be wiped clean even if it gets dirty with food spills. Heat resistant, so it can be used on floor heating. Images are for illustrative purposes only. Because it is a roll packing material, it will be rolled tightly after opening, so please place weight etc. and lay it flat on it.', 4.1, 3.99, 59, 163),
(195, 'Iris Plaza Blackout Curtains, Set of 4, For Immediate Use, Lace Curtain with Leaf Pattern, Thermal Insulation, Machine Washable, 39.4 inches (100 cm) Wide, 47.2 inches (120 cm) Long, Blue Green', 'Material: 100% Polyester.', 4.3, 4.881, 59, 164),
(196, 'Sanko Easy-Attach Anti-Skid Tape', 'Simply stick it to the back of your mat to prevent slipping. It will stick firmly to the floor to prevent slipping. The surface that you apply to the mat is self-adhesive type. Can also be used on hot carpets. Use them for joint mats, entrance mats, kitchen mats, and other mats that may cause them to slip off. No glue residue, can be washed repeatedly (use a laundry net). Once applied, they are not removable.', 4, 525, 59, 122),
(197, 'Sanko KH-15 & Sanko KH-15 Floor Mat for Hallway Padding Mat Carpet, Water Repellent, Deodorizing, Made in Japan, Long Mat, 23.6 x 118.8 inches (60 x 300 cm), Brown KH-69', 'Sanko KH-15 Anti-Slip Joint Mat, Large, 17.7 x 17.7 inches (45 x 45 cm), Brown, 10 Sheets, Carpet Type, Just Suction Tile Mat 0.2 inch (4 mm) thick. This tile mat has been treated to be water repellent. Easy to install and remove It does not suck up even when vacuumed, making it easy to clean. You can cut it to your desired size with scissors or cutter. You can freely mix and match according to your space. Compatible with underfloor heating (maximum temperature: 176°F (80°C). Also recommended for homes with pets. Sanko KH-69 Hallway Mat, Carpet, Water Repellent, Deodorizing, Made in Japan, Easy Suction, Long Mat, 23.6 x 11.8 inches (60 x 300 cm), Brown Easy to install and remove, perfect for barrier-free residential use with adsorption type floor mat The fabric is thin so there is little difference between the floor and it is difficult to stumble and prevents the door from opening and closing. Since the back is firmly adsorbed to the floor, the mat does not move, even when you vacuum it up, it is easy to clean. Prevents stains and scratches on floors, and prevents pets from slipping over when they come home the dash. The pile is water repellent, so even if it gets wet with water, it can be wiped off quickly. You can freely cut it to fit your space with scissors. Machine washable when dirty, it is thin and easy to dry. The suction effect will last even after washing, so you can use it repeatedly. The “catechin” ingredient is formulated on the reverse side to reduce ammonia odor. Suitable for underfloor heating', 4.2, 10.654, 59, 122),
(198, 'Wise Mite Resistant Aluminum Hoton Sheet for 2 Tatami Mats, Approx. 70.9 x 70.9 x 0.08 inches (1800 x 1800 x 2 mm)', 'Product Description   Mite resistant treatment. Underneath hot carpet or kotatsu mat. Uses materials that do not slip easily on both sides.   Amazon.com Review   ●強力な断熱力と熱反射で熱を逃がさない●暖房効率がよくエコロジー●防ダニ加工●ホットカーペットやコタツ敷きの下に敷くだけ●ズレにくい素材使用', 4.1, 1.159, 59, 165),
(199, 'Sanko KP-56 Pet Water Repellent Tile Mat, 11.8 x 11.8 inches (30 x 30 cm), 40 Pieces, Beige, Dog, Cat, Sanko, Carpet, Made in Japan, Water Repellent, Deodorizing, Washable, Can Be Cut with Scissors', 'Product Description   By laying the mat, pets who slip on the flooring floor can also walk with their fingernails, reducing the burden on the lower legs. Protect your floor from scratches and dirt. The suction backing prevents the mat from shifting or snagging even if your pet runs around and your pet is running. Machine washable for easy care. Water repellent treatment wipes away moisture. Can be washed repeatedly, and the suction effect will not change. Easy to cut with scissors. The thin fabric makes it difficult to stumble and doesn\'t interfere with opening and closing doors and is perfect for hallways. It does not suck up even after vacuuming, so you can always keep it clean. Ammonia deodorizing treatment, can be used all year round. Size of 1 piece: 11.8 x 11.8 x 0.1 inches (30 x   Ingredients   Surface: 100% polyester, Back: Acrylic resin (with catechin)   \r\n  Directions   Please wipe off the floor dust and other particles and peel off the film on the back   See more', 4.2, 10.494, 86, 166),
(200, 'GODIVA Christmas Chocolate Gift Candy Assortment Godiva Starry Forest Christmas Curry Assortment (6 Pieces)', 'The theme of the 2023 holiday collection is Christmas in the starry forest. In a package that depicts the animals gather together in a deep forest to celebrate Christmas under the starry night sky, we have assorted 2 festive milk chocolate, cocoa, and white chocolate almond curry. Uses 4.5% cacanib Country of Origin: Belgium.', 2.4, 1.7, 6, 84),
(201, 'Christmas Tree Set, 35.4 inches (90 cm), Family Set, LED Light, Stylish, Tree Set', 'This is a value Christmas tree set decorated with red ribbon and malls, colorful balls and gift boxes. Decorate your Christmas tree with a variety of Christmas events, such as Christmas parties, and more. This is a decorative tree with lights, so you can light up your room and enjoy the illumination. This set includes a tree body, an ornament, and an LED light, so anyone can easily enjoy it in style. Perfect for living room, kids room, cafe, foyer or Christmas gift ■Product Details Tree Size: 35.4 inches (90 cm) / Diameter: Approx. 15.7 inches Tree Stand/Base: Plastic Assembly/Diameter: Approx. 7.9 inches (20 cm) Where to Use: Indoor use *Cannot be used outdoors. Accessories (Ornament): Top ribbon x 1. Ribbon x 4 1 x Molle 1 x MC plate 4 x Plastic Balls 3 x Gift Box Snow cotton x 1 Light specifications: 8 LED multi-bulbs, normal point, flashing only. Light Power: When delivered: Approx. 4.7 x 4.7 x 28.0 inches (12 x 12 x 71 cm). Product Number: 2560481.', 3.7, 3.98, 61, 167),
(202, 'YOKUMOKU Christmas Gift Sweets Yokumoku Present, Assorted Pastries, Assortment, Set of 24', 'This is a Christmas limited edition product with an assortment of seasonal Lungdosher Cookie \"Bier Ou Chocolaole\" and \"Bier Ou Chocolaban\" coated in white chocolate. This limited edition package depicts Jurtomte delightfully looking at a Christmas tree decorated in a festive day snow and shine. This item is full of sparkles and Christmas excitement that you will want to decorate. The crisp texture of the runged shark cookie and the smooth harmony of chocolate Enjoy 2 delicious flavors. Bier-Ou Chocolaban (Seasonal Limited): A cookie wrapped in white chocolate with carefully baked rungdosher dough in half folds. Celebrate the Christmas spirit with this season limited edition cookies. Bier-O Chocolaore (Autumn and Winter Exclusive) A cookie wrapped in milk chocolate with carefully baked rungdosha dough in half folds. You can enjoy the crisp dough and smooth milk chocolate piles. Merry Christmas from JOKKMOKK - Christmas with Yurtomte, a Swedish town where JOKKMOKK, originated from the name \"Yokkmok,\" is a fairy that reappears when it comes to Christmas. With its small and adorable figure, this Yock Mock Christmas limited edition has been loved by many people since its introduction. And this year your Jurtomte will keep you close this Christmas. Great as a Christmas gift, or as an order to your home, year-end or winter gift. Delicious Merry Christmas from the fantasy world surrounded by forests and lakes.', 4.4, 3.29, 87, 8),
(203, 'Christmas Tree, 82.7 inches (210 cm), Pine Cones, Significantly Increased Branches, Scandinavian Style, Nude Tree, Fir Tree, Christmas Illumination, Stylish, None Type', 'On the branches and increase greatly depending on the Christmas tree in classic nude must have arrived. The branches can be gained, luxury and will greatly speed up the ornament or even for you is to feel free to decorate them with the light nude, Tall with 210 cm Big Size branches also available in the Can be spread, you choose the shape of the tree is shaped in to a standard tree. Enjoy the originality of a decoration you can use for years with you even when off leaving no doubt. The Tree Of The 3 two, so it also can be used for storage when storage. Body size: Height of about 210 cm the set includes: Tree (such as split/stand o-namento・ribon・raito・bokkusu in the images is not included the stand of the image and may vary. * To Okinawa on the shipping is not included. Please note: * Christmas Tree 210 cm Nude tree', 4.1, 11800, 61, 168),
(204, 'Christmas Tree, 70.9 inches (180 cm), Pine Cones, Branches Greatly Increased Type, Scandinavian Style, Nude Tree, Fir Tree, Christmas Illumination, Stylish, None Type', 'The Christmas Tree which has significantly on the branches and increase Nude must have. Branches can be gained for luxury and will greatly speed up the ornament and light on the freedom to decorate them when you can enjoy a nude type standard/180 cm Size No Shedding or can be use on since it is expandable from getting bored, you choose the shape of the tree is shaped to a standard tree for years The originality of a decoration you can enjoy from the tree without a doubt one to hold even when off so it is leaving or can be used for storing shoes at home or store your images this is a dazzling Christmas tree to create the size: Tall Approximately 180 cm set includes: main body split folding/stand o-namento・ribon・raito・bokkusu etc are not included * In Okinawa in the shipping is not included. Please note: * Christmas Tree Display Nude tree 180 cm', 4.1, 13.8, 61, 168),
(205, 'Brabola - Sunshine Exclusive! Christmas Tree, 11.8 inches (30 cm), Mini Christmas Tree, Cute, Christmas Goods, Interior Supplies, Entryway, Tabletop Decoration, Scandinavian Style, Stylish, Interior Supplies, Christmas Gift, Perfect Christmas Ornament, St', 'Material: High quality PVC material, reliable, non-toxic, very durable and never fade. It will add sparkle to your home and add warmth and charm to your festive season. Mini Christmas Tree with Scandinavian taste A fun tree with a large set of bonus. Desktop size, add Christmas color to your office or room! A beautiful and majestic Christmas tree for day or night. Christmas tree accessories are colorful, kids favorite. Great for family members, kids and friends to decorate your tree and enjoy Christmas mood.', 1.8, 460, 61, 169),
(206, 'k-outdoor Christmas Ornament, Outdoor Light, LED Figurine, IP65 Waterproof, Snowman, Christmas Decoration, Foldable, Cute, Outdoor, Indoor, Entryway, Garden, Shop, Halloween, Birthday, Celebration, Party Decoration, LED Light, Christmas Lighting (Snowman ', '★ The cute design is not only a perfect decoration for Christmas but also a perfect decoration for winter. ★ Suitable for living room, fireplace, garden, veranda, lawn, outdoor patio, etc. ★ Suitable for commercial, indoor, outdoor, garden, lawn, home and parlor decoration. ★ Enhance your Halloween and Christmas Holiday atmosphere for your family and friends. ★ New Year\'s parties, festivals, cultural festivals, school festivals, department store events, hotel events, school events, home parties and more. ★ It is also a good choice for Christmas and festive gifts. ★ Simply place it in a stylish way to make your event or interior decorations. Create a well-atmospheric space, and make you look beautiful and brighten up your mood. [Note] Due to the light and screen setting difference, the item\'s color may be slightly different from the pictures. This product is easy to assemble for you. [Keyword for search] Christmas Ornament, Outdoor, Christmas, Decoration, Adult, Christmas Ornament, Ornament, Christmas Ornament, Ornament, Christmas Ornament, Entrance, Christmas Ornament, Indoor, Christmas Ornament, Christmas Tree, Ornament, Christmas Light, Indoor, Christmas, Light, Outdoor, Christmas, Light, Battery, Christmas, Miscellaneous Goods, Christmas, Santa, Dolls, Christmas, Electronics, Outdoor, Christmas, Electronics, LED Christmas Decoration, Indoor, Christmas Goods, Snowman Figurine Daruma goods Santa Claus Doll Santa Claus Room Penguin Toy Penguin Goods Penguin Plush Plush Large LED Christmas LED Christmas Lights LED Christmas Power LED Lights Christmas LED Lights Lighting Christmas', 3.3, 3.199, 88, 170);
INSERT INTO `app_product` (`id`, `name`, `content`, `average_rating`, `price`, `category_id`, `supplier_id`) VALUES
(207, 'Artec 11790 Christmas Tree 47.2 inches (120 cm) with Ornament', '●オーナメント内容：メリークリスマスプレート×1、玉(ゴールド)×6、玉(レッド)×6、キャンディケイン×12、プレゼントキューブ×24、雪結晶×12、星×1、LEDイルミネーションライト×1。●イルミネーションライト付き。●パッケージサイズ：166×946×132mm。●重量：1961g。●材質：鉄、PVC、PE、PP、PET、発泡スチロール、PS。●セット内容：オーナメント(メリークリスマスプレート×1、玉(ゴールド)×6、玉(レッド)×6、キャンディケイン×12、プレゼントキューブ×24、雪結晶×12、星×1）、土台×1、ツリー上部×1、ツリー下部×1、LEDイルミネーションライト×1。●商品サイズ：600×600×1200mm。', 3.8, 6.073, 89, 171),
(208, 'Christmas Tree Stand, Foldable Artificial Christmas Tree Stand, 30cm/50cm Metal Modern Christmas Base Holder for Artificial Tree', 'Features: 100% Brand New Specifications: Name: Christmas Tree Stand Available in Diameter/Weight (Approx.): Stand Diameter: 11.81 inches (30 cm) / Middle Hole Diameter: 0.75 inches (1.9 cm) / 0.75 inches (220 g). Stand Diameter: 19.69 inches (50 cm) / Center Hole Diameter: 0.83 inches (2.1 cm) / 0.83 inches (350 g). Color: Green Material: Steel Package Contents: 1 x Christmas Tree Stand Mounting hardware * 1 set', 4.5, 1089, 59, 172),
(209, 'Christmas Tree Crystal Object Holiday Christmas Tree Figurine Crystal Christmas Tree Decor Christmas Ornament Fireplace Tabletop Centerpiece Gift (Style 2)', 'Specifications: Material: Crystal Size: 2.56*0.47inch/6.5*1.2cm Package includes: 1 x Crystal Christmas Tree Note: Manual measurement, please allow slight size error. There may be slight color difference due to different screen display.', 5, 826, 61, 173);

-- --------------------------------------------------------

--
-- Table structure for table `app_productimage`
--

CREATE TABLE `app_productimage` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `link` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_productimage`
--

INSERT INTO `app_productimage` (`id`, `image`, `link`, `type`, `product_id`) VALUES
(1, '', 'https://m.media-amazon.com/images/I/61eI0FKfPjL._SS75_.jpg', '', 1),
(2, '', 'https://m.media-amazon.com/images/I/51g4g0EWNcL._SS75_.jpg', '', 2),
(3, '', 'https://m.media-amazon.com/images/I/51QxaLy6BqL._SS75_.jpg', '', 3),
(4, '', 'https://m.media-amazon.com/images/I/51U70tqSGOL._SS75_.jpg', '', 4),
(5, '', 'https://m.media-amazon.com/images/I/31SMlSIQk7L._SS75_.jpg', '', 5),
(6, '', 'https://m.media-amazon.com/images/I/51pgwQxnVJL._SS75_.jpg', '', 6),
(7, '', 'https://m.media-amazon.com/images/I/51zpon66WaL._SS75_.jpg', '', 7),
(8, '', 'https://m.media-amazon.com/images/I/51tJ5pBMP9L._SS75_.jpg', '', 8),
(9, '', 'https://m.media-amazon.com/images/I/61+jACLWKFL._SS75_.jpg', '', 9),
(10, '', 'https://m.media-amazon.com/images/I/518ZEemAyDL._SS75_.jpg', '', 10),
(11, '', 'https://m.media-amazon.com/images/I/61yWiq++drL._SS75_.jpg', '', 11),
(12, '', 'https://m.media-amazon.com/images/I/415zHhfq3bL._SS75_.jpg', '', 12),
(13, '', 'https://m.media-amazon.com/images/I/41edEiAuIxL._SS75_.jpg', '', 13),
(14, '', 'https://m.media-amazon.com/images/I/41uJ0XRRloL._SS75_.jpg', '', 14),
(15, '', 'https://m.media-amazon.com/images/I/41EPE9G8nVS._SS75_.jpg', '', 15),
(16, '', 'https://m.media-amazon.com/images/I/416BqiiqHJL._SS75_.jpg', '', 16),
(17, '', 'https://m.media-amazon.com/images/I/51dnBUC2u6L._SS75_.jpg', '', 17),
(18, '', 'https://m.media-amazon.com/images/I/512V6q1ksLL._SS75_.jpg', '', 18),
(19, '', 'https://m.media-amazon.com/images/I/41QXLG85BRL._SS75_.jpg', '', 19),
(20, '', 'https://m.media-amazon.com/images/I/412ssSb2qaL._SS75_.jpg', '', 20),
(21, '', 'https://m.media-amazon.com/images/I/417B-h54GVL._SS75_.jpg', '', 21),
(22, '', 'https://m.media-amazon.com/images/I/41hSPA4n0jL._SS75_.jpg', '', 22),
(23, '', 'https://m.media-amazon.com/images/I/51qV0MM-XfL._SS75_.jpg', '', 23),
(24, '', 'https://m.media-amazon.com/images/I/41wa7xT2-gL._SS75_.jpg', '', 24),
(25, '', 'https://m.media-amazon.com/images/I/414AQlK3lHL._SS75_.jpg', '', 25),
(26, '', 'https://m.media-amazon.com/images/I/31xDIO+JYaL._SS75_.jpg', '', 26),
(27, '', 'https://m.media-amazon.com/images/I/41IRqFa3L7L._SS75_.jpg', '', 27),
(28, '', 'https://m.media-amazon.com/images/I/413j75GxmAL._SS75_.jpg', '', 28),
(29, '', 'https://m.media-amazon.com/images/I/41QB8J6dRlL._SS75_.jpg', '', 29),
(30, '', 'https://m.media-amazon.com/images/I/41Mp1ErX6jL._SS75_.jpg', '', 30),
(31, '', 'https://m.media-amazon.com/images/I/41K+6namSzL._SS75_.jpg', '', 31),
(32, '', 'https://m.media-amazon.com/images/I/31pXmNKx6qS._SS75_.jpg', '', 32),
(33, '', 'https://m.media-amazon.com/images/I/41JFfTQpTPL._SS75_.jpg', '', 33),
(34, '', 'https://m.media-amazon.com/images/I/41WaveYrrVL._SS75_.jpg', '', 34),
(35, '', 'https://m.media-amazon.com/images/I/51w1ApHBQAL._SS75_.jpg', '', 35),
(36, '', 'https://m.media-amazon.com/images/I/515LMbcEyzL._SS75_.jpg', '', 36),
(37, '', 'https://m.media-amazon.com/images/I/41oNKkoJ3NL._SS75_.jpg', '', 37),
(38, '', 'https://m.media-amazon.com/images/I/5161HZPd4fS._SS75_.jpg', '', 38),
(39, '', 'https://m.media-amazon.com/images/I/515a5L+0SQL._SS75_.jpg', '', 39),
(40, '', 'https://m.media-amazon.com/images/I/41pWsvGXlYL._SS75_.jpg', '', 40),
(41, '', 'https://m.media-amazon.com/images/I/51ChnyWaaQL._SS75_.jpg', '', 41),
(42, '', 'https://m.media-amazon.com/images/I/41EW2PS7j9L._SS75_.jpg', '', 42),
(43, '', 'https://m.media-amazon.com/images/I/61vW66SP8nL._SS75_.jpg', '', 43),
(44, '', 'https://m.media-amazon.com/images/I/410LPZaOQVL._SS75_.jpg', '', 44),
(45, '', 'https://m.media-amazon.com/images/I/51u1l9eoYYL._SS75_.jpg', '', 45),
(46, '', 'https://m.media-amazon.com/images/I/61AmvhvLBOL._SS75_.jpg', '', 46),
(47, '', 'https://m.media-amazon.com/images/I/61Hj7Dx9L4L._SS75_.jpg', '', 47),
(48, '', 'https://m.media-amazon.com/images/I/51Gqv258urL._SS75_.jpg', '', 48),
(49, '', 'https://m.media-amazon.com/images/I/51yzeAt0cSL._SS75_.jpg', '', 49),
(50, '', 'https://m.media-amazon.com/images/I/31P1IrvU4SL._SS75_.jpg', '', 50),
(51, '', 'https://m.media-amazon.com/images/I/519uCHJ9JVL._SS75_.jpg', '', 51),
(52, '', 'https://m.media-amazon.com/images/I/41YE2SFa6FL._SS75_.jpg', '', 52),
(53, '', 'https://m.media-amazon.com/images/I/51TcKq2R92L._SS75_.jpg', '', 53),
(54, '', 'https://m.media-amazon.com/images/I/41pKWtA8AzL._SS75_.jpg', '', 54),
(55, '', 'https://m.media-amazon.com/images/I/51r+ncUyKwL._SS75_.jpg', '', 55),
(56, '', 'https://m.media-amazon.com/images/I/41TibdAu8mL._SS75_.jpg', '', 56),
(57, '', 'https://m.media-amazon.com/images/I/51-7ChOYwqL._SS75_.jpg', '', 57),
(58, '', 'https://m.media-amazon.com/images/I/51Iytb9STgL._SS75_.jpg', '', 58),
(59, '', 'https://m.media-amazon.com/images/I/51vEZSGaAjL._SS75_.jpg', '', 59),
(60, '', 'https://m.media-amazon.com/images/I/51ROLzgeJJL._SS75_.jpg', '', 60),
(61, '', 'https://m.media-amazon.com/images/I/41dI8KtDGtL._SS75_.jpg', '', 61),
(62, '', 'https://m.media-amazon.com/images/I/21uOcRUOnlL._SS75_.jpg', '', 62),
(63, '', 'https://m.media-amazon.com/images/I/41GFO3uxp3S._SS75_.jpg', '', 63),
(64, '', 'https://m.media-amazon.com/images/I/51PIkKbGSaL._SS75_.jpg', '', 64),
(65, '', 'https://m.media-amazon.com/images/I/41iE7JQFf7L._SS75_.jpg', '', 65),
(66, '', 'https://m.media-amazon.com/images/I/51KsKTWls2L._SS75_.jpg', '', 66),
(67, '', 'https://m.media-amazon.com/images/I/51NPUXdEWTL._SS75_.jpg', '', 67),
(68, '', 'https://m.media-amazon.com/images/I/41xaJS0X1AL._SS75_.jpg', '', 68),
(69, '', 'https://m.media-amazon.com/images/I/51FkUlJI7kL._SS75_.jpg', '', 69),
(70, '', 'https://m.media-amazon.com/images/I/51gtSzm5qYL._SS75_.jpg', '', 70),
(71, '', 'https://m.media-amazon.com/images/I/51RkU5k3o7L._SS75_.jpg', '', 71),
(72, '', 'https://m.media-amazon.com/images/I/51mIHyh-5WL._SS75_.jpg', '', 72),
(73, '', 'https://m.media-amazon.com/images/I/51XG5xYpCfL._SS75_.jpg', '', 73),
(74, '', 'https://m.media-amazon.com/images/I/41fms2rspNL._SS75_.jpg', '', 74),
(75, '', 'https://m.media-amazon.com/images/I/51mBrxzGKjL._SS75_.jpg', '', 75),
(76, '', 'https://m.media-amazon.com/images/I/41hq69J2hOL._SS75_.jpg', '', 76),
(77, '', 'https://m.media-amazon.com/images/I/51oAoOgOVaL._SS75_.jpg', '', 77),
(78, '', 'https://m.media-amazon.com/images/I/51f5V5ZaYZL._SS75_.jpg', '', 78),
(79, '', 'https://m.media-amazon.com/images/I/61HCewionML._SS75_.jpg', '', 79),
(80, '', 'https://m.media-amazon.com/images/I/51-7FuXIOKL._SS75_.jpg', '', 80),
(81, '', 'https://m.media-amazon.com/images/I/51lVkBrBL9L._SS75_.jpg', '', 81),
(82, '', 'https://m.media-amazon.com/images/I/41QeG9km+XL._SS75_.jpg', '', 82),
(83, '', 'https://m.media-amazon.com/images/I/51dd2ewGPRL._SS75_.jpg', '', 83),
(84, '', 'https://m.media-amazon.com/images/I/51UyE6KjCdL._SS75_.jpg', '', 84),
(85, '', 'https://m.media-amazon.com/images/I/415piPVcrLL._SS75_.jpg', '', 85),
(86, '', 'https://m.media-amazon.com/images/I/618l9RHQ0TL._SS75_.jpg', '', 86),
(87, '', 'https://m.media-amazon.com/images/I/51Up5maCKqL._SS75_.jpg', '', 87),
(88, '', 'https://m.media-amazon.com/images/I/51GGiVTTS1L._SS75_.jpg', '', 88),
(89, '', 'https://m.media-amazon.com/images/I/51ACCPiuPeL._SS75_.jpg', '', 89),
(90, '', 'https://m.media-amazon.com/images/I/4184U4cXGLL._SS75_.jpg', '', 90),
(91, '', 'https://m.media-amazon.com/images/I/51qZxzYc9nL._SS75_.jpg', '', 91),
(92, '', 'https://m.media-amazon.com/images/I/5141zj2sS6L._SS75_.jpg', '', 92),
(93, '', 'https://m.media-amazon.com/images/I/51wbDJV8N7L._SS75_.jpg', '', 93),
(94, '', 'https://m.media-amazon.com/images/I/51AB50xlcyL._SS75_.jpg', '', 94),
(95, '', 'https://m.media-amazon.com/images/I/51yGcShi6cL._SS75_.jpg', '', 95),
(96, '', 'https://m.media-amazon.com/images/I/51WpAcqUwEL._SS75_.jpg', '', 96),
(97, '', 'https://m.media-amazon.com/images/I/51yB2Cdle1S._SS75_.jpg', '', 97),
(98, '', 'https://m.media-amazon.com/images/I/51IJza5NbQL._SS75_.jpg', '', 98),
(99, '', 'https://m.media-amazon.com/images/I/51IyraUy2UL._SS75_.jpg', '', 99),
(100, '', 'https://m.media-amazon.com/images/I/515xF7R-nnL._SS75_.jpg', '', 100),
(101, '', 'https://m.media-amazon.com/images/I/519jkt3FwhL._SS75_.jpg', '', 101),
(102, '', 'https://m.media-amazon.com/images/I/51IqYT3GF3L._SS75_.jpg', '', 102),
(103, '', 'https://m.media-amazon.com/images/I/51U3mVSxI7L._SS75_.jpg', '', 103),
(104, '', 'https://m.media-amazon.com/images/I/41CKWRNgvrL._SS75_.jpg', '', 104),
(105, '', 'https://m.media-amazon.com/images/I/5121zagN0SL._SS75_.jpg', '', 105),
(106, '', 'https://m.media-amazon.com/images/I/418U93wJqFL._SS75_.jpg', '', 106),
(107, '', 'https://m.media-amazon.com/images/I/41aSU0d4DkL._SS75_.jpg', '', 107),
(108, '', 'https://m.media-amazon.com/images/I/51A1xtV1NPL._SS75_.jpg', '', 108),
(109, '', 'https://m.media-amazon.com/images/I/31C7qGTSRlL._SS75_.jpg', '', 109),
(110, '', 'https://m.media-amazon.com/images/I/61VyXnDRbLL._SS75_.jpg', '', 110),
(111, '', 'https://m.media-amazon.com/images/I/519P6Zf-giL._SS75_.jpg', '', 111),
(112, '', 'https://m.media-amazon.com/images/I/41WaveYrrVL._SS75_.jpg', '', 112),
(113, '', 'https://m.media-amazon.com/images/I/51N6Qq+jsiL._SS75_.jpg', '', 113),
(114, '', 'https://m.media-amazon.com/images/I/41Fbnh+OIDL._SS75_.jpg', '', 114),
(115, '', 'https://m.media-amazon.com/images/I/513cMAJGX9L._SS75_.jpg', '', 115),
(116, '', 'https://m.media-amazon.com/images/I/41NkWCRttIL._SS75_.jpg', '', 116),
(117, '', 'https://m.media-amazon.com/images/I/41j8eTJNXgL._SS75_.jpg', '', 117),
(118, '', 'https://m.media-amazon.com/images/I/41NkXbfXf-L._SS75_.jpg', '', 118),
(119, '', 'https://m.media-amazon.com/images/I/414iGjQfGXL._SS75_.jpg', '', 119),
(120, '', 'https://m.media-amazon.com/images/I/31z66Tw1rmL._SS75_.jpg', '', 120),
(121, '', 'https://m.media-amazon.com/images/I/21DJ23ymGUL._SS75_.jpg', '', 121),
(122, '', 'https://m.media-amazon.com/images/I/21yXPiylHYL._SS75_.jpg', '', 122),
(123, '', 'https://m.media-amazon.com/images/I/51UKpIR4CGL._SS75_.jpg', '', 123),
(124, '', 'https://m.media-amazon.com/images/I/311PwySeNeL._SS75_.jpg', '', 124),
(125, '', 'https://m.media-amazon.com/images/I/31j8iiCBz4L._SS75_.jpg', '', 125),
(126, '', 'https://m.media-amazon.com/images/I/41oRjywkdML._SS75_.jpg', '', 126),
(127, '', 'https://m.media-amazon.com/images/I/41XDhia3bVL._SS75_.jpg', '', 127),
(128, '', 'https://m.media-amazon.com/images/I/41o+0TWzHbL._SS75_.jpg', '', 128),
(129, '', 'https://m.media-amazon.com/images/I/4107idZWPkL._SS75_.jpg', '', 129),
(130, '', 'https://m.media-amazon.com/images/I/31Lnpq4Dc5L._SS75_.jpg', '', 130),
(131, '', 'https://m.media-amazon.com/images/I/41Azy2cJfcL._SS75_.jpg', '', 131),
(132, '', 'https://m.media-amazon.com/images/I/31tRQ4u9l5L._SS75_.jpg', '', 132),
(133, '', 'https://m.media-amazon.com/images/I/41daqJEGhdL._SS75_.jpg', '', 133),
(134, '', 'https://m.media-amazon.com/images/I/51uozVy6CyL._SS75_.jpg', '', 134),
(135, '', 'https://m.media-amazon.com/images/I/41Z6PwreFgL._SS75_.jpg', '', 135),
(136, '', 'https://m.media-amazon.com/images/I/510uYpvlEEL._SS75_.jpg', '', 136),
(137, '', 'https://m.media-amazon.com/images/I/31zEG-mPgZS._SS75_.jpg', '', 137),
(138, '', 'https://m.media-amazon.com/images/I/51v5+W1zAbL._SS75_.jpg', '', 138),
(139, '', 'https://m.media-amazon.com/images/I/31H7+X-9+dL._SS75_.jpg', '', 139),
(140, '', 'https://m.media-amazon.com/images/I/61EbCIfGewL._SS75_.jpg', '', 140),
(141, '', 'https://m.media-amazon.com/images/I/31bxGoG-k-L._SS75_.jpg', '', 141),
(142, '', 'https://m.media-amazon.com/images/I/31auCnqs+4L._SS75_.jpg', '', 142),
(143, '', 'https://m.media-amazon.com/images/I/21vdZJO-pfL._SS75_.jpg', '', 143),
(144, '', 'https://m.media-amazon.com/images/I/514LoNyBXTL._SS75_.jpg', '', 144),
(145, '', 'https://m.media-amazon.com/images/I/31HMUtLbzJL._SS75_.jpg', '', 145),
(146, '', 'https://m.media-amazon.com/images/I/218eZBkMciL._SS75_.jpg', '', 146),
(147, '', 'https://m.media-amazon.com/images/I/219uJxF8yfL._SS75_.jpg', '', 147),
(148, '', 'https://m.media-amazon.com/images/I/41iGrs-Vf3L._SS75_.jpg', '', 148),
(149, '', 'https://m.media-amazon.com/images/I/31QPf4kFVBL._SS75_.jpg', '', 149),
(150, '', 'https://m.media-amazon.com/images/I/21-QzUnwUTL._SS75_.jpg', '', 150),
(151, '', 'https://m.media-amazon.com/images/I/31KE1Ew1D5L._SS75_.jpg', '', 151),
(152, '', 'https://m.media-amazon.com/images/I/21KpOLpYaNL._SS75_.jpg', '', 152),
(153, '', 'https://m.media-amazon.com/images/I/51dkUxJSN5L._SS75_.jpg', '', 153),
(154, '', 'https://m.media-amazon.com/images/I/51kunqkdR6L._SS75_.jpg', '', 154),
(155, '', 'https://m.media-amazon.com/images/I/51bs+PiycnS._SS75_.jpg', '', 155),
(156, '', 'https://m.media-amazon.com/images/I/41gDOMcI4uL._SS75_.jpg', '', 156),
(157, '', 'https://m.media-amazon.com/images/I/41-7bOFPrzL._SS75_.jpg', '', 157),
(158, '', 'https://m.media-amazon.com/images/I/41gh795FbdL._SS75_.jpg', '', 158),
(159, '', 'https://m.media-amazon.com/images/I/41o+w6hwapS._SS75_.jpg', '', 159),
(160, '', 'https://m.media-amazon.com/images/I/41mhNGj+CwL._SS75_.jpg', '', 160),
(161, '', 'https://m.media-amazon.com/images/I/41bgE9Snf3L._SS75_.jpg', '', 161),
(162, '', 'https://m.media-amazon.com/images/I/41KwC6OTa+L._SS75_.jpg', '', 162),
(163, '', 'https://m.media-amazon.com/images/I/21EPaZvIYfL._SS75_.jpg', '', 163),
(164, '', 'https://m.media-amazon.com/images/I/515UQRqp83L._SS75_.jpg', '', 164),
(165, '', 'https://m.media-amazon.com/images/I/51cqu0amwjL._SS75_.jpg', '', 165),
(166, '', 'https://m.media-amazon.com/images/I/51AaerWBn-L._SS75_.jpg', '', 166),
(167, '', 'https://m.media-amazon.com/images/I/41r0IFJ+HpL._SS75_.jpg', '', 167),
(168, '', 'https://m.media-amazon.com/images/I/413mlF5LRNS._SS75_.jpg', '', 168),
(169, '', 'https://m.media-amazon.com/images/I/51VYzKNEmdL._SS75_.jpg', '', 169),
(170, '', 'https://m.media-amazon.com/images/I/41b2svvEQaL._SS75_.jpg', '', 170),
(171, '', 'https://m.media-amazon.com/images/I/41NvHIVOwnL._SS75_.jpg', '', 171),
(172, '', 'https://m.media-amazon.com/images/I/51-8hUFddZL._SS75_.jpg', '', 172),
(173, '', 'https://m.media-amazon.com/images/I/417achD-tJL._SS75_.jpg', '', 173),
(174, '', 'https://m.media-amazon.com/images/I/41P2oXcuvZL._SS75_.jpg', '', 174),
(175, '', 'https://m.media-amazon.com/images/I/31ZfyGYWWeL._SS75_.jpg', '', 175),
(176, '', 'https://m.media-amazon.com/images/I/510ZwmyHNmL._SS75_.jpg', '', 176),
(177, '', 'https://m.media-amazon.com/images/I/31Xge+4pIAL._SS75_.jpg', '', 177),
(178, '', 'https://m.media-amazon.com/images/I/51NzLph55ZL._SS75_.jpg', '', 178),
(179, '', 'https://m.media-amazon.com/images/I/41ET1XnxrpL._SS75_.jpg', '', 179),
(180, '', 'https://m.media-amazon.com/images/I/51guh9LYgNL._SS75_.jpg', '', 180),
(181, '', 'https://m.media-amazon.com/images/I/51UqdOwQGOL._SS75_.jpg', '', 181),
(182, '', 'https://m.media-amazon.com/images/I/51sEerqaNQL._SS75_.jpg', '', 182),
(183, '', 'https://m.media-amazon.com/images/I/51o8w+BJ4JL._SS75_.jpg', '', 183),
(184, '', 'https://m.media-amazon.com/images/I/41E6OiRrlSL._SS75_.jpg', '', 184),
(185, '', 'https://m.media-amazon.com/images/I/61t4XF1JA3L._SS75_.jpg', '', 185),
(186, '', 'https://m.media-amazon.com/images/I/51qD4rkubQL._SS75_.jpg', '', 186),
(187, '', 'https://m.media-amazon.com/images/I/31A5EKlHdQL._SS75_.jpg', '', 187),
(188, '', 'https://m.media-amazon.com/images/I/41vNww-THFL._SS75_.jpg', '', 188),
(189, '', 'https://m.media-amazon.com/images/I/21xn4q5hfRL._SS75_.jpg', '', 189),
(190, '', 'https://m.media-amazon.com/images/I/51VTRBYsqCL._SS75_.jpg', '', 190),
(191, '', 'https://m.media-amazon.com/images/I/51o9GON8J5L._SS75_.jpg', '', 191),
(192, '', 'https://m.media-amazon.com/images/I/31iOxuPYcVL._SS75_.jpg', '', 192),
(193, '', 'https://m.media-amazon.com/images/I/41BMl7QNNkS._SS75_.jpg', '', 193),
(194, '', 'https://m.media-amazon.com/images/I/41WuiGcbxUL._SS75_.jpg', '', 194),
(195, '', 'https://m.media-amazon.com/images/I/41rBRtO0C9L._SS75_.jpg', '', 195),
(196, '', 'https://m.media-amazon.com/images/I/413ukCBDHeL._SS75_.jpg', '', 196),
(197, '', 'https://m.media-amazon.com/images/I/31PxdO-rIDL._SS75_.jpg', '', 197),
(198, '', 'https://m.media-amazon.com/images/I/51lBux0rAJL._SS75_.jpg', '', 198),
(199, '', 'https://m.media-amazon.com/images/I/41vZAA-KjiL._SS75_.jpg', '', 199),
(200, '', 'https://m.media-amazon.com/images/I/51cuGMJ0kEL._SS75_.jpg', '', 200),
(201, '', 'https://m.media-amazon.com/images/I/41PX7qpveiL._SS75_.jpg', '', 201),
(202, '', 'https://m.media-amazon.com/images/I/51hQ-MttCnL._SS75_.jpg', '', 202),
(203, '', 'https://m.media-amazon.com/images/I/51ezmhEwlBL._SS75_.jpg', '', 203),
(204, '', 'https://m.media-amazon.com/images/I/518+VRhw7VL._SS75_.jpg', '', 204),
(205, '', 'https://m.media-amazon.com/images/I/51DW0FMzvgL._SS75_.jpg', '', 205),
(206, '', 'https://m.media-amazon.com/images/I/51xb2Bsf0AL._SS75_.jpg', '', 206),
(207, '', 'https://m.media-amazon.com/images/I/41sDeHnoXSL._SS75_.jpg', '', 207),
(208, '', 'https://m.media-amazon.com/images/I/4161iefj7XL._SS75_.jpg', '', 208),
(209, '', 'https://m.media-amazon.com/images/I/41UDgyLhTIL._SS75_.jpg', '', 209);

-- --------------------------------------------------------

--
-- Table structure for table `app_purchase`
--

CREATE TABLE `app_purchase` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` smallint(5) UNSIGNED NOT NULL CHECK (`status` >= 0),
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app_review`
--

CREATE TABLE `app_review` (
  `id` bigint(20) NOT NULL,
  `content` longtext NOT NULL,
  `rating` smallint(5) UNSIGNED NOT NULL CHECK (`rating` >= 0),
  `time` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app_supplier`
--

CREATE TABLE `app_supplier` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_supplier`
--

INSERT INTO `app_supplier` (`id`, `name`) VALUES
(1, 'Brand: じゃがりこ'),
(2, 'Brand: ポテトチップス'),
(3, 'Brand: バランスオンminiケーキ'),
(4, 'Visit the Lindt(リンツ) Store'),
(5, 'Brand: チョコレート効果'),
(6, 'Brand: UHA味覚糖'),
(7, 'Brand: チロルチョコ'),
(8, 'Visit the ヨックモック Store'),
(9, 'Visit the カロリーメイト Store'),
(10, 'Brand: ブタメン'),
(11, 'Brand: コロンバン'),
(12, 'Visit the ドトールコーヒー Store'),
(13, 'Brand: ネスカフェ RSC'),
(14, 'Visit the ヘルシー ルイボスティー Store'),
(15, 'Brand: ネスカフェ CCM'),
(16, 'Visit the ジャスミンティー Store'),
(17, 'Visit the AGF(エージーエフ) Store'),
(18, 'Visit the ゴールドスペシャル Store'),
(19, 'Brand: MACALLAN(マッカラン)'),
(20, 'Brand: イチローズモルト'),
(21, 'Brand: ローヤル'),
(22, 'Brand: 白州'),
(23, 'Brand: THE GLENLIVET (ザ・グレンリベット)'),
(24, 'Brand: Kubota'),
(25, 'Brand: 山崎'),
(26, 'Visit the サントリー Store'),
(27, 'Visit the 濃いめのレモンサワー Store'),
(28, 'Brand: マスターズドリーム'),
(29, 'Brand: 宮崎本店'),
(30, 'Brand: 村尾酒造'),
(31, 'Brand: 神明'),
(32, 'Brand: サトウ食品'),
(33, 'Brand: 諸長'),
(34, 'Visit the パパッとライス Store'),
(35, 'Brand: 越後製菓'),
(36, 'Brand: サトウ'),
(37, 'Brand: マルちゃん'),
(38, 'Brand: 旭食品'),
(39, 'Visit the TEIJIN Store'),
(40, 'Brand: 友盛貿易'),
(41, 'Brand: タナベ'),
(42, 'Brand: 華華百貨店【冷凍豚肉・鶏肉・羊肉類】'),
(43, 'Brand: 黒豚牌'),
(44, 'Brand: 戸田久'),
(45, 'Brand: 沖縄ハム総合食品'),
(46, 'Brand: 三田屋総本家'),
(47, 'Brand: タンしゃぶ亭'),
(48, 'Brand: 柿安'),
(49, 'Brand: 沖縄ハム総合食品株式会社'),
(50, 'Brand: OneV FT'),
(51, 'Visit the 新潟 三幸 Store'),
(52, 'Brand: 愛媛、橋本鮮魚'),
(53, 'Brand: タクマ食品'),
(54, 'Brand: 京吉'),
(55, 'Visit the 明治水産 Store'),
(56, 'Brand: ヤマカ'),
(57, 'Brand: 瀬戸内海の贈り物'),
(58, 'Brand: 東洋ツバメの巣'),
(59, 'Brand: 瀬戸内海の贈物'),
(60, 'Brand: くらこん'),
(61, 'Brand: 橋本鮮魚'),
(62, 'Brand: 雲月'),
(63, 'Brand: 華華百貨店【雑穀・シリアル】'),
(64, 'Brand: さんきん'),
(65, 'Brand: ショップＫ＆Ｔ'),
(66, 'Brand: ノーブランド品'),
(67, 'Brand: 生活クラブ・スピリッツ'),
(68, 'Brand: いぶりの里'),
(69, 'Brand: 吾妻食品'),
(70, 'Brand: 浅草今半'),
(71, 'Visit the 成城石井 Store'),
(72, 'Brand: （株）今半'),
(73, 'Brand: 三奥屋'),
(74, 'Visit the アサヒ Store'),
(75, 'Brand: 華華百貨店【漬物·ザーサイ類】'),
(76, 'Brand: 三島食品'),
(77, 'Brand: 小倉屋山本'),
(78, 'Brand: LIBERO'),
(79, 'Brand: ハーゲンダッツ'),
(80, 'Brand: イーストゲート'),
(81, 'Brand: ニップン'),
(82, 'Brand: VANILLA'),
(83, 'Brand: 3'),
(84, 'Visit the GODIVA Store'),
(85, 'Brand: マ・マー'),
(86, 'Brand: ひかり味噌'),
(87, 'Brand: マルちゃん　パリパリ無限キャベツのもと'),
(88, 'Visit the 内堀醸造 Store'),
(89, 'Brand: 地中海フーズ'),
(90, 'Visit the MIKASA Store'),
(91, 'Brand: ケンミンフーズ'),
(92, 'Brand: グリコ (Glico)'),
(93, 'Brand: Kewpie (キューピー)'),
(94, 'Brand: Nissin (日清)'),
(95, 'Brand: S&B Foods (エスビー)'),
(96, 'Brand: Morinaga (森永)'),
(97, 'Brand: Ajinomoto (味の素)'),
(98, 'Brand: Meiji (明治)'),
(99, 'Brand: YAMASA (ヤマサ)'),
(100, 'Brand: Calbee (カルビー)'),
(101, 'Brand: 丸大食品'),
(102, 'Brand: 大谷食品'),
(103, 'Brand: 資生堂 (Shiseido)'),
(104, 'Brand: 資生堂 (Shiseido)'),
(105, 'Brand: 資生堂 (Shiseido)'),
(106, 'Brand: 資生堂 (Shiseido)'),
(107, 'Brand: 資生堂 (Shiseido)'),
(108, 'Brand: 資生堂 (Shiseido)'),
(109, 'Brand: 資生堂 (Shiseido)'),
(110, 'Brand: 資生堂 (Shiseido)'),
(111, 'Brand: 資生堂 (Shiseido)'),
(112, 'Brand: 資生堂 (Shiseido)'),
(113, 'Brand: 資生堂 (Shiseido)'),
(114, 'Brand: 資生堂 (Shiseido)'),
(115, 'Brand: 資生堂 (Shiseido)'),
(116, 'Brand: 資生堂 (Shiseido)'),
(117, 'Brand: 資生堂 (Shiseido)'),
(118, 'Brand: 資生堂 (Shiseido)'),
(119, 'Brand: 資生堂 (Shiseido)'),
(120, 'Brand: 資生堂 (Shiseido)'),
(121, 'Brand: 資生堂 (Shiseido)'),
(122, 'Brand: 資生堂 (Shiseido)'),
(123, 'Brand: 資生堂 (Shiseido)'),
(124, 'Brand: 資生堂 (Shiseido)'),
(125, 'Brand: 資生堂 (Shiseido)'),
(126, 'Brand: 資生堂 (Shiseido)'),
(127, 'Brand: 資生堂 (Shiseido)'),
(128, 'Brand: 資生堂 (Shiseido)'),
(129, 'Brand: 資生堂 (Shiseido)'),
(130, 'Brand: 資生堂 (Shiseido)'),
(131, 'Brand: 資生堂 (Shiseido)'),
(132, 'Brand: 資生堂 (Shiseido)'),
(133, 'Brand: 資生堂 (Shiseido)'),
(134, 'Brand: 資生堂 (Shiseido)'),
(135, 'Brand: 資生堂 (Shiseido)'),
(136, 'Brand: 資生堂 (Shiseido)'),
(137, 'Brand: 資生堂 (Shiseido)'),
(138, 'Brand: 資生堂 (Shiseido)'),
(139, 'Brand: 資生堂 (Shiseido)'),
(140, 'Brand: 資生堂 (Shiseido)'),
(141, 'Brand: 資生堂 (Shiseido)'),
(142, 'Brand: 資生堂 (Shiseido)'),
(143, 'Brand: 資生堂 (Shiseido)'),
(144, 'Brand: 資生堂 (Shiseido)'),
(145, 'Brand: 資生堂 (Shiseido)'),
(146, 'Brand: 資生堂 (Shiseido)'),
(147, 'Brand: 資生堂 (Shiseido)'),
(148, 'Brand: 資生堂 (Shiseido)'),
(149, 'Brand: 資生堂 (Shiseido)'),
(150, 'Brand: 資生堂 (Shiseido)'),
(151, 'Brand: 資生堂 (Shiseido)'),
(152, 'Brand: 資生堂 (Shiseido)'),
(153, 'Brand: 資生堂 (Shiseido)'),
(154, 'Brand: 資生堂 (Shiseido)'),
(155, 'Brand: 資生堂 (Shiseido)'),
(156, 'Brand: 資生堂 (Shiseido)'),
(157, 'Brand: 資生堂 (Shiseido)'),
(158, 'Brand: 資生堂 (Shiseido)'),
(159, 'Brand: 資生堂 (Shiseido)'),
(160, 'Brand: 資生堂 (Shiseido)'),
(161, 'Brand: 資生堂 (Shiseido)'),
(162, 'Brand: 資生堂 (Shiseido)'),
(163, 'Brand: 資生堂 (Shiseido)'),
(164, 'Brand: 資生堂 (Shiseido)'),
(165, 'Brand: 資生堂 (Shiseido)'),
(166, 'Brand: 資生堂 (Shiseido)'),
(167, 'Brand: 資生堂 (Shiseido)'),
(168, 'Brand: 資生堂 (Shiseido)'),
(169, 'Brand: 資生堂 (Shiseido)'),
(170, 'Brand: 資生堂 (Shiseido)'),
(171, 'Brand: 資生堂 (Shiseido)'),
(172, 'Brand: coly'),
(173, 'Brand: Lankater');

-- --------------------------------------------------------

--
-- Table structure for table `app_user`
--

CREATE TABLE `app_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `email` varchar(254) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` smallint(5) UNSIGNED NOT NULL CHECK (`gender` >= 0),
  `phone` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_user`
--

INSERT INTO `app_user` (`id`, `password`, `last_login`, `is_superuser`, `is_staff`, `is_active`, `email`, `date_of_birth`, `gender`, `phone`, `username`) VALUES
(1, 'pbkdf2_sha256$600000$eEBCYivfWHP0rbtgr32Ac6$6PZbE4t1DrDhoAJU++SKjFWyQhlsM1NxHhwsNIki1Q4=', NULL, 0, 0, 1, 'sonth12344@batgroup.vn', NULL, 0, '', NULL),
(2, 'pbkdf2_sha256$600000$LUup311doOnsTrVpFPLYvY$XE0sj9Anaij8PDgvRqXs/H8UDoFMxke807yk4l1YDNo=', NULL, 0, 0, 1, 'sonth12345@batgroup.vn', NULL, 0, '', NULL),
(3, 'pbkdf2_sha256$600000$2jt0UaGAVlDrIFKClvW7mb$CP4Pw2ablo/kZ+tRkcZBIc5JXxnCL0UrkO/54k6cT/E=', NULL, 0, 0, 1, 'sonth1234@batgroup.vn', NULL, 0, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `app_user_groups`
--

CREATE TABLE `app_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app_user_user_permissions`
--

CREATE TABLE `app_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app_voucher`
--

CREATE TABLE `app_voucher` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) NOT NULL,
  `discountPercent` double NOT NULL,
  `maxDiscount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add product', 8, 'add_product'),
(30, 'Can change product', 8, 'change_product'),
(31, 'Can delete product', 8, 'delete_product'),
(32, 'Can view product', 8, 'view_product'),
(33, 'Can add supplier', 9, 'add_supplier'),
(34, 'Can change supplier', 9, 'change_supplier'),
(35, 'Can delete supplier', 9, 'delete_supplier'),
(36, 'Can view supplier', 9, 'view_supplier'),
(37, 'Can add voucher', 10, 'add_voucher'),
(38, 'Can change voucher', 10, 'change_voucher'),
(39, 'Can delete voucher', 10, 'delete_voucher'),
(40, 'Can view voucher', 10, 'view_voucher'),
(41, 'Can add user', 11, 'add_user'),
(42, 'Can change user', 11, 'change_user'),
(43, 'Can delete user', 11, 'delete_user'),
(44, 'Can view user', 11, 'view_user'),
(45, 'Can add review', 12, 'add_review'),
(46, 'Can change review', 12, 'change_review'),
(47, 'Can delete review', 12, 'delete_review'),
(48, 'Can view review', 12, 'view_review'),
(49, 'Can add purchase', 13, 'add_purchase'),
(50, 'Can change purchase', 13, 'change_purchase'),
(51, 'Can delete purchase', 13, 'delete_purchase'),
(52, 'Can view purchase', 13, 'view_purchase'),
(53, 'Can add product image', 14, 'add_productimage'),
(54, 'Can change product image', 14, 'change_productimage'),
(55, 'Can delete product image', 14, 'delete_productimage'),
(56, 'Can view product image', 14, 'view_productimage'),
(57, 'Can add order', 15, 'add_order'),
(58, 'Can change order', 15, 'change_order'),
(59, 'Can delete order', 15, 'delete_order'),
(60, 'Can view order', 15, 'view_order'),
(61, 'Can add cart', 16, 'add_cart'),
(62, 'Can change cart', 16, 'change_cart'),
(63, 'Can delete cart', 16, 'delete_cart'),
(64, 'Can view cart', 16, 'view_cart'),
(65, 'Can add order detail', 17, 'add_orderdetail'),
(66, 'Can change order detail', 17, 'change_orderdetail'),
(67, 'Can delete order detail', 17, 'delete_orderdetail'),
(68, 'Can view order detail', 17, 'view_orderdetail'),
(69, 'Can add delivery info', 18, 'add_deliveryinfo'),
(70, 'Can change delivery info', 18, 'change_deliveryinfo'),
(71, 'Can delete delivery info', 18, 'delete_deliveryinfo'),
(72, 'Can view delivery info', 18, 'view_deliveryinfo');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(16, 'app', 'cart'),
(7, 'app', 'category'),
(18, 'app', 'deliveryinfo'),
(15, 'app', 'order'),
(17, 'app', 'orderdetail'),
(8, 'app', 'product'),
(14, 'app', 'productimage'),
(13, 'app', 'purchase'),
(12, 'app', 'review'),
(9, 'app', 'supplier'),
(11, 'app', 'user'),
(10, 'app', 'voucher'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-12-26 13:15:34.349210'),
(2, 'auth', '0001_initial', '2023-12-26 13:15:34.899459'),
(3, 'admin', '0001_initial', '2023-12-26 13:15:35.024046'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-12-26 13:15:35.032476'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-12-26 13:15:35.040423'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-12-26 13:15:35.120328'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-12-26 13:15:35.175550'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-12-26 13:15:35.187182'),
(9, 'auth', '0004_alter_user_username_opts', '2023-12-26 13:15:35.198434'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-12-26 13:15:35.245917'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-12-26 13:15:35.249318'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-12-26 13:15:35.258208'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-12-26 13:15:35.272551'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-12-26 13:15:35.286692'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-12-26 13:15:35.304687'),
(16, 'auth', '0011_update_proxy_permissions', '2023-12-26 13:15:35.312678'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-12-26 13:15:35.327999'),
(18, 'app', '0001_initial', '2023-12-26 13:15:36.740740'),
(19, 'app', '0002_alter_productimage_product', '2023-12-26 13:15:36.756504'),
(20, 'app', '0003_delete_comment', '2023-12-26 13:15:36.766557'),
(21, 'app', '0004_alter_review_product', '2023-12-26 13:15:36.781775'),
(22, 'app', '0005_alter_user_options_alter_user_managers_and_more', '2023-12-26 13:15:36.922773'),
(23, 'app', '0006_remove_user_username', '2023-12-26 13:15:36.943451'),
(24, 'app', '0007_user_date_of_birth_user_gender_user_phone_and_more', '2023-12-26 13:15:37.055801'),
(25, 'app', '0008_remove_order_count_remove_order_product_and_more', '2023-12-26 13:15:37.814233'),
(26, 'app', '0009_rename_quantity_orderdetail_count', '2023-12-26 13:15:38.137725'),
(27, 'app', '0010_alter_order_price', '2023-12-26 13:15:38.150759'),
(28, 'app', '0011_alter_productimage_link', '2023-12-26 13:15:38.166563'),
(29, 'sessions', '0001_initial', '2023-12-26 13:15:38.225679');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_cart`
--
ALTER TABLE `app_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_cart_product_id_a4171918_fk_app_product_id` (`product_id`),
  ADD KEY `app_cart_user_id_2bf07879_fk_app_user_id` (`user_id`);

--
-- Indexes for table `app_category`
--
ALTER TABLE `app_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_deliveryinfo`
--
ALTER TABLE `app_deliveryinfo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_deliveryinfo_order_id_8f332aa7_fk_app_order_id` (`order_id`);

--
-- Indexes for table `app_order`
--
ALTER TABLE `app_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_order_user_id_f25a9fc4_fk_app_user_id` (`user_id`);

--
-- Indexes for table `app_orderdetail`
--
ALTER TABLE `app_orderdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_orderdetail_order_id_04d70173_fk_app_order_id` (`order_id`),
  ADD KEY `app_orderdetail_product_id_f68d1331_fk_app_product_id` (`product_id`);

--
-- Indexes for table `app_product`
--
ALTER TABLE `app_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_product_supplier_id_d98de20e_fk_app_supplier_id` (`supplier_id`),
  ADD KEY `app_product_category_id_023742a5_fk_app_category_id` (`category_id`);

--
-- Indexes for table `app_productimage`
--
ALTER TABLE `app_productimage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_productimage_product_id_53d99c25_fk_app_product_id` (`product_id`);

--
-- Indexes for table `app_purchase`
--
ALTER TABLE `app_purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_purchase_user_id_3978aa99_fk_app_user_id` (`user_id`);

--
-- Indexes for table `app_review`
--
ALTER TABLE `app_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_review_product_id_30b78593_fk_app_product_id` (`product_id`),
  ADD KEY `app_review_user_id_54c922e0_fk_app_user_id` (`user_id`);

--
-- Indexes for table `app_supplier`
--
ALTER TABLE `app_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_user`
--
ALTER TABLE `app_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `app_user_email_efde8896_uniq` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `app_user_groups`
--
ALTER TABLE `app_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `app_user_groups_user_id_group_id_73b8e940_uniq` (`user_id`,`group_id`),
  ADD KEY `app_user_groups_group_id_e774d92c_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `app_user_user_permissions`
--
ALTER TABLE `app_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `app_user_user_permissions_user_id_permission_id_7c8316ce_uniq` (`user_id`,`permission_id`),
  ADD KEY `app_user_user_permis_permission_id_4ef8e133_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `app_voucher`
--
ALTER TABLE `app_voucher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_cart`
--
ALTER TABLE `app_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_category`
--
ALTER TABLE `app_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `app_deliveryinfo`
--
ALTER TABLE `app_deliveryinfo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_order`
--
ALTER TABLE `app_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `app_orderdetail`
--
ALTER TABLE `app_orderdetail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_product`
--
ALTER TABLE `app_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `app_productimage`
--
ALTER TABLE `app_productimage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `app_purchase`
--
ALTER TABLE `app_purchase`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_review`
--
ALTER TABLE `app_review`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_supplier`
--
ALTER TABLE `app_supplier`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `app_user`
--
ALTER TABLE `app_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `app_user_groups`
--
ALTER TABLE `app_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_user_user_permissions`
--
ALTER TABLE `app_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_voucher`
--
ALTER TABLE `app_voucher`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app_cart`
--
ALTER TABLE `app_cart`
  ADD CONSTRAINT `app_cart_product_id_a4171918_fk_app_product_id` FOREIGN KEY (`product_id`) REFERENCES `app_product` (`id`),
  ADD CONSTRAINT `app_cart_user_id_2bf07879_fk_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`);

--
-- Constraints for table `app_deliveryinfo`
--
ALTER TABLE `app_deliveryinfo`
  ADD CONSTRAINT `app_deliveryinfo_order_id_8f332aa7_fk_app_order_id` FOREIGN KEY (`order_id`) REFERENCES `app_order` (`id`);

--
-- Constraints for table `app_order`
--
ALTER TABLE `app_order`
  ADD CONSTRAINT `app_order_user_id_f25a9fc4_fk_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`);

--
-- Constraints for table `app_orderdetail`
--
ALTER TABLE `app_orderdetail`
  ADD CONSTRAINT `app_orderdetail_order_id_04d70173_fk_app_order_id` FOREIGN KEY (`order_id`) REFERENCES `app_order` (`id`),
  ADD CONSTRAINT `app_orderdetail_product_id_f68d1331_fk_app_product_id` FOREIGN KEY (`product_id`) REFERENCES `app_product` (`id`);

--
-- Constraints for table `app_product`
--
ALTER TABLE `app_product`
  ADD CONSTRAINT `app_product_category_id_023742a5_fk_app_category_id` FOREIGN KEY (`category_id`) REFERENCES `app_category` (`id`),
  ADD CONSTRAINT `app_product_supplier_id_d98de20e_fk_app_supplier_id` FOREIGN KEY (`supplier_id`) REFERENCES `app_supplier` (`id`);

--
-- Constraints for table `app_productimage`
--
ALTER TABLE `app_productimage`
  ADD CONSTRAINT `app_productimage_product_id_53d99c25_fk_app_product_id` FOREIGN KEY (`product_id`) REFERENCES `app_product` (`id`);

--
-- Constraints for table `app_purchase`
--
ALTER TABLE `app_purchase`
  ADD CONSTRAINT `app_purchase_user_id_3978aa99_fk_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`);

--
-- Constraints for table `app_review`
--
ALTER TABLE `app_review`
  ADD CONSTRAINT `app_review_product_id_30b78593_fk_app_product_id` FOREIGN KEY (`product_id`) REFERENCES `app_product` (`id`),
  ADD CONSTRAINT `app_review_user_id_54c922e0_fk_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`);

--
-- Constraints for table `app_user_groups`
--
ALTER TABLE `app_user_groups`
  ADD CONSTRAINT `app_user_groups_group_id_e774d92c_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `app_user_groups_user_id_e6f878f6_fk_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`);

--
-- Constraints for table `app_user_user_permissions`
--
ALTER TABLE `app_user_user_permissions`
  ADD CONSTRAINT `app_user_user_permis_permission_id_4ef8e133_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `app_user_user_permissions_user_id_24780b52_fk_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
