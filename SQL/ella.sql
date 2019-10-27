-- MySQL dump 10.13  Distrib 8.0.18, for macos10.14 (x86_64)
--
-- Host: localhost    Database: slimyb
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Application`
--

DROP TABLE IF EXISTS `Application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Application` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `User` varchar(45) DEFAULT NULL,
  `Title` varchar(265) DEFAULT NULL,
  `Tag` varchar(45) DEFAULT NULL,
  `Content` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Application`
--

LOCK TABLES `Application` WRITE;
/*!40000 ALTER TABLE `Application` DISABLE KEYS */;
INSERT INTO `Application` VALUES (20,'Administrator','','','');
/*!40000 ALTER TABLE `Application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Diary`
--

DROP TABLE IF EXISTS `Diary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Diary` (
  `DiaryId` bigint(20) NOT NULL AUTO_INCREMENT,
  `breakfast` int(11) DEFAULT NULL,
  `Date` varchar(255) DEFAULT NULL,
  `dinner` int(11) DEFAULT NULL,
  `gym` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `lunch` int(11) DEFAULT NULL,
  `snack` int(11) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `water` int(11) DEFAULT NULL,
  PRIMARY KEY (`DiaryId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Diary`
--

LOCK TABLES `Diary` WRITE;
/*!40000 ALTER TABLE `Diary` DISABLE KEYS */;
INSERT INTO `Diary` VALUES (1,0,'2019-10-10',1,1,NULL,1,0,'This function will record life based on the calendar, users can query, add, modify and delete specific content through the calendar.',NULL,1),(2,0,'2019-10-10',1,1,NULL,1,0,'This function will record life based on the calendar, users can query, add, modify and delete specific content through the calendar.',NULL,1);
/*!40000 ALTER TABLE `Diary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Forum`
--

DROP TABLE IF EXISTS `Forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Forum` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `User` varchar(45) DEFAULT NULL,
  `Title` varchar(265) DEFAULT NULL,
  `Tag` varchar(45) DEFAULT NULL,
  `Content` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Forum`
--

LOCK TABLES `Forum` WRITE;
/*!40000 ALTER TABLE `Forum` DISABLE KEYS */;
INSERT INTO `Forum` VALUES (4,'','Exercise & Fitness','#Fitness','Exercising regularly, every day if possible, is the single most important thing you can do for your health. In the short term, exercise helps to control appetite, boost mood, and improve sleep. In the long term, it reduces the risk of heart disease, stroke, diabetes, dementia, depression, and many cancers. The Centers for Disease Control and Prevention recommend the following:\r\n\r\nFor adults of all ages\r\nAt least 150 minutes of moderate aerobic exercise like brisk walking or 75 minutes of rigorous exercise like running (or an equivalent mix of both) every week.  It’s fine to break up exercise into smaller sessions as long as each one lasts at least 10 minutes.\r\nStrength-training that works all major muscle groups—legs, hips, back, abdomen, chest, shoulders, and arms—at least two days a week.  Strength training may involve lifting weights, using resistance bands, or exercises like push-ups and sit-ups, in which your body weight furnishes the resistance.\r\nFor pregnant women\r\nThe guidelines for aerobic exercise are considered safe for most pregnant women. The CDC makes no recommendation for strength training. It’s a good idea to review your exercise plan with your doctor.\r\n\r\nFor children\r\nAt least 60 minutes of physical activity a day, most of which should be devoted to aerobic exercise. Children should do vigorous exercise and strength training, such as push-ups or gymnastics, on at least three days.\r\n\r\nReference: https://www.health.harvard.edu/topics/exercise-and-fitness\r\n'),(6,'Administrator','Foods that fight \'lifestyle\' diseases','#Food','If we can only resist the marketers’ sweet talk, there is plenty to learn from communities around the world where most people do not die early due to chronic disease. Dan Buettner, a researcher with National Geographic, studied five communities of people in what he called the Blue Zones.\r\n\r\nInhabitants of these “zones” – in California, Costa Rica, Italy, Greece and Japan – generally live into their nineties and beyond without disability or disease, and Buettner discovered they have some common lifestyle factors that boost both their length and quality of life.\r\n\r\nThese communities see food as medicine, not just something to satisfy their hunger. Most community members stay physically active well into their final years. They avoid processed foods, grow their own plant foods, and eat very little meat or none at all.\r\n\r\nThey take time to see the big picture – as one community says, “ikigai”, or “have a sense of purpose” – a reason to get up in the morning. Most participate actively in their community in some way, maintaining connections with other members, and prioritise spending time with their loved ones.\r\n\r\nThere is good scientific evidence to back up Buettner’s findings. Among many other leading organisations, the World Cancer Research Fund recommends eating mostly plant foods and less red meat, while the American Institute of Cancer Research agrees that a diet filled with a variety of plant foods such as vegetables, fruits, wholegrains and beans helps lower our risk of many cancers.\r\n\r\nSeveral studies have found many benefits from a Mediterranean-style diet, with olive oil as its main source of fat instead of animal meat, including cutting the risk of age-related dementia. Diabetes, heart and cancer research organisations worldwide list the following as their top disease-fighting plant foods – and as you’ll see, most are easily included in the diets of even the fussiest eaters!\r\ncapsicum\r\nwholegrain breads and cereals!\r\nbroccoli\r\ngreen leafy vegetables\r\napples\r\ntomatoes\r\nonions\r\ngarlic\r\nberries\r\navocado\r\nred grapes\r\nnuts\r\nseeds, legumes, herbs and spices (eg yellow turmeric)\r\nsoy beans and soy products such as milks\r\ntofu.\r\n\r\nSo by making even small, gradual changes to what we eat and how we live, we can all start the journey towards what Sanitarium likes to call “wholicious living” (which simply means a way to better health and wellbeing).\r\n\r\nReference: Angela Saunders.(2018). Foods that fight \'lifestyle\' diseases. Avaliable from https://www.sanitarium.com.au/health-nutrition/nutrition/foods-that-fight-lifestyle-diseases.\r\n'),(8,'Administrator','What is obesity and what causes it?','#Health','Obesity is a medical condition that occurs when a person carries excess weight or body fat that might affect their health. A doctor will usually suggest that a person has obesity if they have a high body mass index.\r\n\r\nBody mass index (BMI) is a tool that doctors use to assess if a person is at an appropriate weight for their age, sex, and height. The measurement combines height and weight.\r\n\r\nA BMI between 25 and 29.9 indicates that a person is carrying excess weight. A BMI of 30 or over suggests that a person may have obesity.\r\n\r\nOther factors, such as the ratio of waist-to-hip size (WHR), waist-to-height ratio (WtHR), and the amount and distribution of fat on the body also play a role in determining how healthy a person\'s weight and body shape are.\r\n\r\nIf a person does have obesity and excess weight, this can increase their risk of developing a number of health conditions, including metabolic syndrome, arthritis, and some types of cancer.\r\n\r\nMetabolic syndrome involves a collection of issues, such as high blood pressure, type 2 diabetes, and cardiovascular disease.\r\n\r\nMaintaining a healthy weight or losing through diet and exercise is one way to prevent or reduce obesity. In some cases, a person may need surgery.\r\n\r\nNow read on to find out why obesity happens.\r\n\r\n1) Consuming too many calories\r\n\r\nWhen a person consumes more calories than they use as energy, their body will store the extra calories as fat. This can lead to excess weight and obesity.\r\n\r\nAlso, some types of foods are more likely to lead to weight gain, especially those that are high in fats and sugars.\r\n\r\n2) Leading a sedentary lifestyle\r\n\r\nExamples of sedentary habits include: working in an office rather than doing manual labor, playing games on a computer instead of doing physical activities outside and going to places by car instead of walking or cycling.\r\n\r\n3) Not sleeping enough\r\nResearch has suggested that missing sleep increases the risk of gaining weight and developing obesity.\r\n\r\nResearchers reviewed evidence for over 28,000 children and 15,000 adults in the United Kingdom from 1977 to 2012. In 2012, they concluded that sleep deprivation significantly increased obesity risk in both adults and children.\r\n\r\nThe changes affected children as young as 5 years of age.\r\n\r\nThe team suggested that sleep deprivation may lead to obesity because it can lead to hormonal changes that increase the appetite.\r\n\r\nWhen a person does not sleep enough, their body produces ghrelin, a hormone that stimulates appetite. At the same time, a lack of sleep also results in a lower production of leptin, a hormone that suppresses the appetite.\r\n\r\n4) Endocrine disruptors\r\nA team from the University of Barcelona published a studyTrusted Source in the World Journal of Gastroenterology that provides clues as to how liquid fructose — a type of sugar — in beverages may alter lipid energy metabolism and lead to fatty liver and metabolic syndrome.\r\n\r\nFeatures of metabolic syndrome include diabetes, cardiovascular disease, and high blood pressure. People with obesity are more likely to have metabolic syndrome.\r\n\r\nAfter feeding rats a 10-percent fructose solution for 14 days, the scientists noted that their metabolism was starting to change.\r\n\r\nScientists believe there is a link between high consumption of fructose and obesity and metabolic syndrome. Authorities have raised concerns about the use of high-fructose corn syrup to sweeten drinks and other food products.\r\n\r\nAnimal studies have found that when obesity occurs due to fructose consumption, there is also a close link with type 2 diabetes.\r\n\r\nIn 2018, researchers published the results of investigations involving young rats. They, too experienced metabolic changes, oxidative stress, and inflammation after consuming fructose syrup.\r\n\r\nThe researchers note that \"increased fructose intake may be an important predictor of metabolic risk in young people.\"\r\n\r\n5) Medications and weight gain\r\nSome medications can also lead to weight gain.\r\n\r\nResults of a review and meta-analysisTrusted Source published in The Journal of Clinical Endocrinology and Metabolism in 2015 found that some medicines caused people to gain weight over a period of months.\r\n\r\natypical antipsychotics, especially olanzapine, quetiapine, and risperidone\r\nanticonvulsants and mood stabilizers, and specifically gabapentin\r\nhypoglycemic medications, such as tolbutamide\r\nglucocorticoids used to treat rheumatoid arthritis\r\nsome antidepressants\r\nHowever, some medications may lead to weight loss. Anyone who is starting a new medication and is concerned about their weight should ask their doctor whether the drug is likely to have any effect on weight.\r\n\r\nReference: Yvette Brazier. (2018). https://www.medicalnewstoday.com/articles/323551.php.'),(10,'Administrator','How to Lose Weight Fast: 3 Simple Steps, Based on Science','#Lose Weight','1. Cut Back on Sugars and Starches\r\nThe most important part is to cut back on sugars and starches (carbs). When you do that, your hunger levels go down and you end up eating much fewer calories (1Trusted Source).\r\n\r\nNow instead of burning carbs for energy, your body starts feeding off of stored fat.\r\n\r\nAnother benefit of cutting carbs is that it lowers insulin levels, causing your kidneys to shed excess sodium and water out of your body. This reduces bloat and unnecessary water weight (2, 3Trusted Source).\r\n\r\nIt is not uncommon to lose up to 10 pounds (sometimes more) in the first week of eating this way, both body fat and water weight.\r\n\r\n2. Eat Protein, Fat and Vegetables\r\nEach one of your meals should include a protein source, a fat source and low-carb vegetables.\r\n\r\nConstructing your meals in this way will automatically bring your carb intake into the recommended range of 20–50 grams per day.\r\n\r\nProtein Sources\r\nMeat: Beef, chicken, pork, lamb, etc.\r\nFish and Seafood: Salmon, trout, shrimp, etc.\r\nEggs: Whole eggs with the yolk are best.\r\nThe importance of eating plenty of protein cannot be overstated.\r\n\r\nThis has been shown to boost metabolism by 80 to 100 calories per day (6Trusted Source, 7Trusted Source, 8Trusted Source).\r\n\r\nHigh-protein diets can also reduce cravings and obsessive thoughts about food by 60%, reduce the desire for late-night snacking by half, and make you so full that you automatically eat 441 fewer calories per day — just by adding protein to your diet (9Trusted Source, 10Trusted Source).\r\n\r\nWhen it comes to losing weight, protein is the king of nutrients. Period.\r\n\r\nLow-Carb Vegetables\r\nBroccoli\r\nCauliflower\r\nSpinach\r\nTomatoes\r\nKale\r\nBrussels sprouts\r\nCabbage\r\nSwiss chard\r\nLettuce\r\nCucumber\r\nFull list here.\r\nDon’t be afraid to load your plate with these low-carb vegetables. You can eat massive amounts of them without going over 20–50 net carbs per day.\r\n\r\nA diet based mostly on meat and vegetables contains all the fiber, vitamins and minerals you need to be healthy.\r\n\r\nFat Sources\r\nOlive oil\r\nCoconut oil\r\nAvocado oil\r\nButter\r\nEat 2–3 meals per day. If you find yourself hungry in the afternoon, add a 4th meal.\r\n\r\nDon’t be afraid of eating fat, as trying to do both low-carb AND low-fat at the same time is a recipe for failure. It will make you feel miserable and abandon the plan.\r\n\r\nTo see how you can assemble your meals, check out this low-carb meal plan and this list of 101 healthy low-carb recipes.\r\n\r\n3. Lift Weights 3 Times Per Week\r\nYou don\'t need to exercise to lose weight on this plan, but it is recommended.\r\n\r\nThe best option is to go to the gym 3–4 times a week. Do a warm-up and lift some weights.\r\n\r\nIf you\'re new to the gym, ask a trainer for some advice.\r\n\r\nBy lifting weights, you will burn lots of calories and prevent your metabolism from slowing down, which is a common side effect of losing weight (11Trusted Source, 12Trusted Source).\r\n\r\nStudies on low-carb diets show that you can even gain a bit of muscle while losing significant amounts of body fat (13).\r\n\r\nIf lifting weights is not an option for you, then doing some cardio workouts like walking, jogging, running, cycling or swimming will suffice.\r\n\r\n\r\nOptional — Do a \"Carb Refeed\" Once Per Week\r\nYou can take one day off per week where you eat more carbs. Many people prefer Saturday.\r\n\r\nIt is important to stick to healthy carb sources like oats, rice, quinoa, potatoes, sweet potatoes, fruit, etc.\r\n\r\nBut only this one higher carb day — if you start doing it more often than once per week you\'re not going to see much success on this plan.\r\n\r\nIf you must have a cheat meal and eat something unhealthy, then do it on this day.\r\n\r\nBe aware that cheat meals or carb refeeds are NOT necessary, but they can boost some fat-burning hormones like leptin and thyroid hormones (14Trusted Source, 15Trusted Source).\r\n\r\nYou will gain some weight during your refeed day, but most of it will be water weight and you will lose it again in the next 1–2 days.\r\n\r\nReference:  Kris Gunnars. (2018). How to Lose Weight Fast: 3 Simple Steps, Based on Science. Avaliable from: https://www.healthline.com/nutrition/how-to-lose-weight-as-fast-as-possible.\r\n'),(11,'Administrator','Over-the-counter weight-loss pills','#Product','The appeal of losing weight quickly is hard to resist. But do weight-loss pills and products lighten anything but your wallet? And are they safe?\r\n\r\nSetting realistic expectations\r\nThere\'s no magic bullet for losing weight. The most effective way to lose weight and keep it off is by eating a healthy low-calorie diet and being more physically active.\r\n\r\nWeight-loss pills — prescription drugs, nonprescription drugs, herbal products or other dietary supplements — are all, at best, tools that may help with weight loss. But there is relatively little research about these products. The best studied of these are prescription weight-loss drugs.\r\n\r\nFor example, a 2016 study reviewed 28 long-term trials of prescription drugs for treating obesity. The researchers concluded that when a person makes appropriate lifestyle changes, a prescription weight-loss drug increases the likelihood of achieving \"clinically meaningful\" weight loss within a year.\r\n\r\nClinically meaningful weight loss means you\'ve lost enough weight to lower your risk of heart disease, diabetes and other diseases. This is generally defined as 5 percent or more of body weight.\r\n\r\nIt\'s important to consider that weight loss achieved in a research setting may be greater than in actual practice. Also, possible side effects and adverse reactions to weight-loss pills can affect how well you might do.\r\n\r\nIt\'s reasonable to expect that prescription weight-loss pills may be beneficial, but they won\'t be magical. They don\'t work for everyone, and the benefits may be modest. Researchers know much less about the potential benefits and risks of over-the-counter weight-loss products.\r\n\r\nUnderstanding over-the-counter treatment regulations\r\nOver-the-counter weight-loss treatments fall into two general categories:\r\n\r\nNonprescription drugs\r\nDietary supplements\r\nThe standards for regulating the production and marketing of these two types of treatments are different. For a nonprescription drug, such as orlistat (Alli), the drug company must provide the Food and Drug Administration (FDA) with results from human (clinical) trials that show the safety and effectiveness of the drug at the nonprescription dose.\r\n\r\nThe makers of dietary supplements are responsible for ensuring the safety of their product and making honest claims about possible benefits. However, the makers\' claims aren\'t subject to FDA review or approval before marketing. Also, the type or quality of research used to support claims can vary.\r\n\r\nIf the FDA can demonstrate that a supplement is unsafe, the agency can ban the product or ask a manufacturer to withdraw it voluntarily. The FDA may also take action against a manufacturer if there is no evidence at all to support a claim.\r\n\r\nThese differences in research, production and marketing can make it difficult to make informed decisions about products.\r\n\r\nInterpreting claims on weight-loss supplements\r\nWhen a dietary supplement is marketed as \"clinically proven\" to cause weight loss, there should be some type of clinical evidence to support it. Such a claim, however, provides no details about the clinical research.\r\n\r\nFor example, raspberry ketone supplements are marketed as clinically proven, natural weight-loss products. As of December 2017, the results of only one clinical trial with raspberry ketone had been published. The results include the following information:\r\n\r\nThe eight-week trial used a multi-ingredient supplement with raspberry ketone, caffeine, bitter orange, ginger root extract and garlic root extract, as well as other herbs, vitamins and minerals.\r\nSeventy obese adults were randomly assigned to receive either the supplement or an inactive ingredient (placebo).\r\nAll of the participants were placed on a restricted diet and exercise program.\r\nForty-five people completed all eight weeks of the trial.\r\nAmong people completing the trial, the average weight loss in the supplement group was 4.2 pounds (1.9 kilograms).\r\nThe average weight loss in the placebo group was 0.9 pounds (0.4 kilograms).\r\nThe weight loss in the treatment group was modest, and the trial was only eight weeks, which isn\'t long enough to know if the supplement will help with weight loss long term. Plus, the supplement included multiple ingredients, making it impossible to judge which ingredients helped the weight loss.\r\n\r\nUnderstanding safety concerns\r\nLimited research also makes it difficult to judge the safety of a weight-loss supplement. And a product isn\'t necessarily safe simply because it\'s natural. Though rare, some dietary supplements have been linked to serious problems, such as liver damage.\r\n\r\nEphedra, or ma-huang, is an herbal stimulant once used in weight-loss products. It\'s now banned by the FDA because of possible adverse effects, including mood changes, high blood pressure, irregular heart rate, stroke, seizures and heart attacks.\r\n\r\nBitter orange is a currently available herbal stimulant used in some weight-loss supplements and is often called an ephedra substitute. The active ingredient in bitter orange has chemical properties and actions that are similar to ephedra and may be associated with similar adverse effects. Because of limited research and the use of bitter orange in multi-ingredient supplements, the safety of the product isn\'t well-understood.\r\n\r\nResearching before you buy\r\nIt\'s important to do your homework if you\'re thinking about trying over-the-counter weight-loss pills. Information about many dietary supplements is available online from the Office of Dietary Supplements and the National Center for Complementary and Integrative Health.\r\n\r\nThe Natural Medicines database summarizes research regarding dietary supplements and herbal products. Although information from the Natural Medicines database is available only by subscription, you may be able to access it through a public library.\r\n\r\nIncluding your doctor in your weight-loss plans\r\nIf you\'re considering weight-loss pills, be sure to talk with your doctor, especially if you have health problems, take prescription drugs, or are pregnant or breast-feeding. It\'s also important to get advice on possible interactions with your current use of medicine, vitamins or minerals.\r\n\r\nYour doctor can also offer advice on losing weight, provide support, monitor your progress or refer you to a dietitian.\r\n\r\nReference: Mayo Clinic Staff. (2018). Over-the-counter weight-loss pills. Avaliable from: https://www.mayoclinic.org/healthy-lifestyle/weight-loss/in-depth/weight-loss/art-20046409.'),(13,'Administrator','Nutritious & Delicious: 11 of Sydney’s Healthiest Restaurants','#Food','1. Bodhi Restaurant, Sydney\r\nHidden behind St Mary’s Cathedral in the city, Bodhi has an incredible vegan menu. Settle in to an outdoor seat among the fairy lights and fig trees, and order up a feast of Oriental delights. Think steamed Chinese vegetables, san choy bao, vegan dumplings, salads and stir-fries with a rainbow of veggies, nuts and herbs. To round off your meal with a vegan yuzu cheesecake with black sesame.\r\n2-4 College Street, Sydney\r\n\r\n2. Acre Eatery\r\nWith sustainability at its core, Acre Eatery showcases ethical, farm-to-table dining at its finest. Everything on the menu is wholesome, vibrant and full of flavour, with showstoppers including the likes of summer salad with freekeh, pickled garden vegetables, spiced carrot and golden beet, chili and labneh; cold smoked Kingfish with ruby grapefruit salsa; and Wagyu bresaola carpaccio, capers, anchovy aioli, pecorino.\r\n31A Mallett Street, Camperdown \r\n\r\n3. Warren & Holt\r\nFor organic, locally sourced food in a sleek Marrickville setting you won’t find better than Warren & Holt. You also won’t find a more accommodating bunch, dedicated to their allergen-friendly, vegan-friendly, ethically sourced mantra, which is reflected in every dish on the healthy, nutritious menu. \r\n415 Illawarra Road, Marrickville \r\n\r\n4. Lox Stock & Barrel\r\nA few streets back from Bondi Beach, this healthy haunt’s rustic interiors match the menu, which is simple and allows the quality of the ingredients to shine. Try the sprouted mixed grain falafel with red lentil dahl and coconut sambal, or the slow-roasted eggplant stuffed with quinoa, spiced nuts, herbs and haloumi. In the mood for seafood? Order the Ora salmon with labne – you won’t be disappointed.\r\n140 Glenayr Avenue, Bondi Beach\r\n\r\n5. COOH Alexandria, Sydney\r\nCOOH sources organic produce, and makes almost everything else in-house to serve up dishes that are bursting with flavour and nutrition. Start with the scallops with corn and mango salsa before moving onto the crispy skin ocean trout with sweet potato puree and citrus herb salad. If you have room for dessert, the vegan caramel ice-cream sandwich will hit the sweet spot.\r\n90-96 Bourke Road, Alexandria\r\n\r\n6. Kepos Street Kitchen, Sydney\r\nEvery meal at this Middle Eastern-meets-Mediterranean dining destination should start with the homemade hummus and Tel Aviv falafel (it’s so good, they wrote a book about it). Then, try the cauliflower salad with parsley, walnut and pistachio, or the fish kefta with smoky eggplant, mint and pomegranate. When you’re in Waterloo, there’s a similar menu at sister restaurant, Kepos & Co.\r\n96 Kepos Street, Redfern\r\n\r\n7. Bondi\'s Best, Sydney\r\nThanks to its selection of sustainable seafood, this Bondi haunt has made a splash on Sydney’s seafood scene. It\'s also a haven for healthy eaters. After you’ve chosen your fish and how you’d like it cooked (grilled or steamed are the most virtuous options), have some fun with the sides. The roasted carrots are delicious, as are the sweet potato chips and seaweed salad.\r\nNorth Bondi & Bondi Beach\r\n\r\n8. Momo Bar\r\nEver since its opening early 2017, the bar has been impressing Sydneysiders with its menu of Nepalese ‘momos’ (plump, juicy dumplings), and Hawaiian poke bowls. The fusion not only works, but it’s a healthy one at that – the momos are gluten-free, and stuffed with handmade fillings, while the bowls are brimming with sashimi, brown rice, and various veggies. \r\n28 Market Lane, Manly and 15-19 Pacific Parade, Dee Why \r\n\r\n9. Nourishing Quarter, Sydney\r\nHere, every plate is packed with superfoods, veggies and other nourishing ingredients, and free from gluten, meat, dairy and refined sugar. The menu is tapas-style, so you can try a bit of everything, like the vegan san choy bow, crunchy quinoa salads, and pho with buckwheat and kumara noodles. Be sure to book, as the restaurant operates with two-hour sittings every night.\r\n315 Cleveland Street, Redfern\r\n\r\n10. Egg Of The Universe\r\nRevered locally not just for their thriving yoga classes and rejuvenating retreats, Rozelle’s Egg of the Universe café is a ‘celebration of life’ centred on nutrient-dense wholefoods and principles of sustainability. You’ll find tasty café classics alongside cleansing teas, kombucha and broth to extend your post-yoga glow.\r\n711 Darling Street, Rozelle \r\n\r\n11. Yulli\'s, Sydney\r\nWhether you’re vegetarian or just having a Meatless Monday, Yulli’s delivers. The menu is as creative as it is flavourful, with a mix of Asian, Moroccan and Mexican-style plates. We love the mini Vietnamese pancake with chilli radish, king mushrooms and tofu, and the kimchi fried rice. Otherwise, the Moroccan tagine with buckwheat polenta is an exotic way to wind down your day.\r\n417 Crown Street, Surry Hills\r\n\r\nReference: Sitchu Team. (2017). Nutritious & Delicious: 11 of Sydney’s Healthiest Restaurants. Available from: https://www.sitchu.com.au/sydney/eat-drink/healthy-restaurants-sydney/3/. '),(14,'Administrator','6 innovations from Future Healthcare 2019','#Health','1. Detecting dementia early\r\nToday, Alzheimer\'s disease — the most common form of dementia — is one of the leading causes of death in the United States. As the population\'s average age slowly rises, the number of deaths due to dementia are likely to rise in line.\r\n\r\nDespite this, catching dementia early remains challenging. Oxford Brain Diagnostics believe that their technology can catch the condition years before symptoms become apparent.\r\n\r\nTheir secret lies in cortical disarray measurement (CDM). In short, this technique enables scientists to gather an \"extra level of detail\" from existing MRI scans. This allows them to detect changes in the microanatomy of the brain.\r\n\r\nDr. Steven Chance — Oxford Brain Diagnostics\' CEO — told MNT that \"CDM extracts information about the microscopic structure of the brain\'s gray matter by applying a unique analysis to a standard form of MRI scan.\"\r\n\r\n2. Blockchain for health\r\n\r\nMedicalchain want to change how people access their medical records by using secure blockchain technology — most famous for its use in cryptocurrency — they have designed a way that patients can view and, when necessary, share their data with clinicians. Medicalchain have outlined their product in a white paper:\r\n\r\n\"Medicalchain enables the user to give healthcare professionals access to their personal health data. Medicalchain then records interactions with [these] data in an auditable, transparent, and secure way on Medicalchain\'s distributed ledger.\"\r\n\r\nThis technology, the company believes, would empower the patient. Also, as online consultations become more popular, this technology would help overcome some of their inherent privacy and security issues.\r\n\r\n3. Mobile cancer screening\r\n\r\nMobileODT have designed a battery-powered, hand-held colposcope called the EVA System, which can take high-quality images of the cervix. MobileODT worked with the National Cancer Institute to develop a machine learning algorithm, called automatic visual evaluation (AVE), that can produce an accurate diagnosis in minutes.\r\n\r\n4. Upgrading disposable batteries\r\n\r\nHow batteries work has remained relatively unchanged for decades. BlueThink — without altering the underlying chemistry — have developed a way of making a common type of battery safer and more cost-effective. According to BlueThink, they have found a way to mitigate all of the above. Using standard battery technology but with a twist, they have created a flexible battery that a child could safely swallow, that does not explode when incinerated, and that keeps its charge when left on a shelf.\r\n\r\n5. Robots vs. loneliness\r\n\r\nGenie Connect is a friendly looking miniature robot. The designers described it as \"a companion robot service that uses a friendly, intuitive, voice-enabled robot to offer connectivity and support [...] older adults.\" Genie Connect can have a conversation and set up video chats with healthcare professionals and family members. Service Robotics Limited designed it to help stimulate and engage the user\'s mind. It also reminds the user when to take medication and attend appointments.\r\n\r\n6. Breathe more easily?\r\n\r\nSoeMac is a small, rectangular device that gently whirrs. A user simply switches it on and leaves it by their bed at night. According to the designers, it helps us breathe more easily and sleep better. They say that \"it works by drawing air inside and producing a bio-usable form of energized oxygen, known as Singlet Oxygen Energy, or SOE.\" \"This can help your body to carry out essential restorative work while you sleep at night, boosting the effectiveness of your nighttime detoxification and bodily repair functions.\" It is crucial to note that so far, no clinical trials back up these claims. However, SoeMac\'s creators are planning studies in the near future. In particular, they hope that it might give relief to people with chronic obstructive pulmonary disease.\r\n\r\nOverall, Future Healthcare 2019 was a thoroughly interesting event. It is always exciting being party to the cutting edge of medical innovation.'),(15,'Administrator','Methods and effects of training','#Fitness','Continuous training develops cardiovascular fitness\r\n\r\nA minimum of 20 minutes sub-maximal work.\r\nTarget heart rate range between 60% - 80% maximum heart rate (maxHR).\r\nSwimming, running, cycling, walking or a combination of these disciplines.\r\nDisadvantage - some participants find longer sessions to be boring.\r\nFartlek (speed play) training develops a range of components and is used by games players\r\n\r\nA continuous form of training.\r\nChanges in speed, incline and terrain are used to provide changes in exercise intensity.\r\nAerobic and anaerobic work can be done in the quantities that suit the performer.\r\nDisadvantage - some urban areas have little variety of incline and terrain.\r\n\r\nInterval training develops strength, speed and muscular endurance\r\n\r\nPeriods of intense work interspersed with timed rest.\r\nA wide variety of fitness types can be developed.\r\nStructured in reps and sets.\r\nIntensity is measured by % maxHR.\r\nDisadvantage - maximal nature of intervals can be too challenging for some participants.\r\nWeight training develops strength\r\n\r\nAn interval form of training.\r\nIntensity is measured in a percentage of the most weight a person can lift one time and is known as % 1 REP MAX.\r\nTime is structured in reps and sets with specific timings for recovery between sets.\r\nHuge range of possible lifts combining machines, free weights and body weight exercises.\r\nDisadvantage - many performers use poor technique while striving for an even heavier weight.\r\n\r\nPlyometric training develops power\r\n\r\nHigh intensity exercise involving explosive movements.\r\nThe muscle is lengthened and then rapidly shortened to develop the explosive capability of the muscle.\r\nSuitable for well-trained athletes.\r\nVery effective for developing power.\r\nDisadvantage - can cause injury if athlete is not in excellent condition.\r\nFlexibility training develops flexibility\r\n\r\nEssential training for all athletes in all sports and activities.\r\nTime is measured by the length of hold and the recovery period between holds.\r\nIntensity is measured as a percentage of range of motion (%ROM).\r\nDisadvantage - underused by many athletes.');
/*!40000 ALTER TABLE `Forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ItemComment`
--

DROP TABLE IF EXISTS `ItemComment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ItemComment` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Comment` varchar(255) DEFAULT NULL,
  `CommentTime` datetime DEFAULT NULL,
  `ProductId` bigint(20) DEFAULT NULL,
  `Userid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK7C3CA7ACB70EADDC` (`ProductId`),
  CONSTRAINT `FK7C3CA7ACB70EADDC` FOREIGN KEY (`ProductId`) REFERENCES `product` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ItemComment`
--

LOCK TABLES `ItemComment` WRITE;
/*!40000 ALTER TABLE `ItemComment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ItemComment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderItem`
--

DROP TABLE IF EXISTS `OrderItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OrderItem` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ItemPrice` double DEFAULT NULL,
  `OrderId` bigint(20) DEFAULT NULL,
  `ProductId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK60163F61B70EADDC` (`ProductId`),
  CONSTRAINT `FK60163F61B70EADDC` FOREIGN KEY (`ProductId`) REFERENCES `product` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderItem`
--

LOCK TABLES `OrderItem` WRITE;
/*!40000 ALTER TABLE `OrderItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrderItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Product` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Description` varchar(255) DEFAULT NULL,
  `ImagePath` varchar(255) DEFAULT NULL,
  `LastUpdateTime` datetime DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `UserId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Profile`
--

DROP TABLE IF EXISTS `Profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Profile` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Birthday` varchar(255) DEFAULT NULL,
  `Gender` varchar(255) DEFAULT NULL,
  `Height` double DEFAULT NULL,
  `Weight` double DEFAULT NULL,
  `Bust` double DEFAULT NULL,
  `Waist` double DEFAULT NULL,
  `Hips` double DEFAULT NULL,
  `BMI` double DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Profile`
--

LOCK TABLES `Profile` WRITE;
/*!40000 ALTER TABLE `Profile` DISABLE KEYS */;
INSERT INTO `Profile` VALUES (1,'user test','123@456.com',30,'May 30','male',179,90,80,90,90,28.1),(2,'uaeh','234@gmail.com',24,'12/05/2000','female',167,50,60,100,80,17.9),(4,'Peter','peter333@gmail.com',27,'05/09/1992','male',190,90,100,90,100,24.9),(5,'Health Association','healthy@gmail.com',33,'19/05/1986','male',170,80,100,90,100,27.7),(6,'Tiffany','tiffanybrown@gmail.com',25,'24/03/1994','female',164,45,82,52,90,16.7),(7,'Bobo','bobo389@gmail.com',18,'28/06/2000','female',170,55,90,68,90,19),(8,'iZONE','izone2018@gmail.com',15,'23/11/2004','female',172,45,85,53,85,15.2),(9,'Hello H','hellohhh@gmail.com',67,'04/04/1952','male',180,100,120,123,130,30.9),(10,'Jason','77jason88@gmail.com',23,'14/04/1996','male',180,73,100,80,100,22.5),(11,'Ruby','rubywoo@gmail.com',40,'10/10/1979','female',159,70,110,80,110,27.7),(12,'faker','nsivbsj@gmail.com',52,'25/08/1967','male',185,120,120,120,120,35.1),(13,'Lily','lili@gmail.com',20,'10/09/1999','female',180,80,100,100,100,NULL);
/*!40000 ALTER TABLE `Profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `DiaryBookID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (5,'healthy@gmail.com','healthyisimportant','Health Association',NULL),(6,'tiffanybrown@gmail.com','tiffanygoodgirl','Tiffany',NULL),(7,'bobo389@gmail.com','bobo389389','Bobo',NULL),(9,'hellohhh@gmail.com','hellohhhsdf','Hello H',NULL),(10,'77jason88@gmail.com','jason7788','Jason',NULL),(11,'rubywoo@gmail.com','rubywooooo','Ruby',NULL),(12,'nsivbsj@gmail.com','sadfasdf','faker',NULL),(13,'lili@gmail.com','lilililili','Lily',NULL);
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-27 14:33:27
