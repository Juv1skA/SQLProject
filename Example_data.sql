-- Inserting sample data into Category Table
INSERT INTO Category (CategoryID, CategoryName) VALUES
(1, 'Breakfast'),
(2, 'Lunch'),
(3, 'Dinner'),
(4, 'Dessert');

-- Inserting sample data into Recipe Table
INSERT INTO Recipe (RecipeID, RecipeName, TotalCookingTime, CategoryID) VALUES
(1, 'Scrambled Eggs', 15, 1),
(2, 'Grilled Chicken Salad', 30, 2),
(3, 'Spaghetti Bolognese', 45, 3),
(4, 'Chocolate Cake', 60, 4),
(5, 'Garlic Shrimp Appetizer', 20, 2),
(6, 'Caesar Salad', 20, 2),
(7, 'Tomato Basil Soup', 25, 1),
(8, 'Beef Stroganoff', 40, 3),
(9, 'Garlic Mashed Potatoes', 25, 2),
(10, 'Iced Tea', 5, 4);

-- Inserting sample data into Ingredients Table
INSERT INTO Ingredients (IngredientID, IngredientName, Quantity, RecipeID) VALUES
(1, 'Eggs', '3', 1),
(2, 'Salt', 'To taste', 1),
(3, 'Chicken Breast', '2', 2),
(4, 'Lettuce', '1 head', 2),
(5, 'Spaghetti', '200g', 3),
(6, 'Ground Beef', '300g', 3),
(7, 'Chocolate', '200g', 4),
(8, 'Flour', '200g', 4),
(9, 'Shrimp', '250g', 5),
(10, 'Garlic', '3 cloves', 5),
(11, 'Parmesan Cheese', '50g', 6),
(12, 'Croutons', '1 cup', 6),
(13, 'Tomatoes', '3', 7),
(14, 'Basil', 'A handful', 7),
(15, 'Beef Sirloin', '400g', 8),
(16, 'Onion', '1', 8),
(17, 'Potatoes', '500g', 9),
(18, 'Butter', '50g', 9),
(19, 'Tea Bags', '4', 10),
(20, 'Sugar', 'To taste', 10);


-- Inserting sample data into CookingHardware Table
INSERT INTO CookingHardware (HardwareID, HardwareName, RecipeID) VALUES
(1, 'Frying Pan', 1),
(2, 'Grill', 2),
(3, 'Pot', 3),
(4, 'Oven', 4),
(5, 'Skillet', 5),
(6, 'Blender', 6),
(7, 'Saucepan', 7),
(8, 'Grater', 8),
(9, 'Mixing Bowl', 9),
(10, 'Whisk', 10);;

-- Inserting sample data into Instructions Table
INSERT INTO Instructions (InstructionID, InstructionText, RecipeID) VALUES
(1, 'Beat eggs and salt in a bowl. Heat frying pan and add beaten eggs. Cook until set.', 1),
(2, 'Season chicken breasts with salt and pepper. Grill until cooked through. Slice and serve over lettuce.', 2),
(3, 'Cook spaghetti according to package instructions. In a separate pan, brown ground beef. Add sauce and simmer. Serve over cooked spaghetti.', 3),
(4, 'Preheat oven to 350°F (175°C). Mix chocolate cake ingredients and bake for 30-35 minutes. Let cool before serving.', 4),
(5, 'Peel and devein shrimp. Heat oil in a skillet, add minced garlic and shrimp. Cook until shrimp turn pink. Serve as an appetizer.', 5),
(6, 'Tear lettuce leaves into bite-size pieces. Add croutons, parmesan cheese, and Caesar dressing. Toss until coated. Serve chilled.', 6),
(7, 'In a saucepan, sauté minced garlic in olive oil until fragrant. Add chopped tomatoes and basil. Simmer for 20 minutes. Serve hot.', 7),
(8, 'Slice beef sirloin thinly. Sauté sliced onion in a skillet until soft. Add beef and cook until browned. Serve with rice or noodles.', 8),
(9, 'Peel and chop potatoes. Boil until tender, then mash with butter until smooth and creamy. Season with salt and pepper to taste.', 9),
(10, 'Boil water and steep tea bags for 5 minutes. Stir in sugar until dissolved. Serve over ice.', 10);

-- Inserting sample data into AlternativeIngredients Table
INSERT INTO AlternativeIngredients (AlternativeID, OriginalIngredientID, AlternativeIngredientName, RecipeID) VALUES
(1, 1, 'Egg Whites', 1),
(2, 6, 'Ground Turkey', 3),
(3, 7, 'Cocoa Powder', 4),
(4, 9, 'Chicken', 5),
(5, 8, 'Rice Flour', 6),
(6, 9, 'Cabbage', 7),
(7, 15, 'Chicken Breast', 8),
(8, 17, 'Sweet Potatoes', 9),
(9, 19, 'Lemonade Mix', 10);


-- Inserting sample data into AlternativeRecipes Table
INSERT INTO AlternativeRecipes (AlternativeID, OriginalRecipeID, AlternativeRecipeID) VALUES
(1, 1, 2),
(2, 3, 4),
(3, 5, 6),
(4, 7, 8),
(5, 9, 10);


-- Inserting sample data into Images Table
INSERT INTO Images (ImageID, ImageURL, RecipeID) VALUES
(1, 'url_to_image1.jpg', 1),
(2, 'url_to_image2.jpg', 2),
(3, 'url_to_image3.jpg', 3),
(4, 'url_to_image4.jpg', 4),
(5, 'url_to_image5.jpg', 5),
(6, 'url_to_image6.jpg', 6),
(7, 'url_to_image7.jpg', 7),
(8, 'url_to_image8.jpg', 8),
(9, 'url_to_image9.jpg', 9),
(10, 'url_to_image10.jpg', 10);

-- Inserting sample data into AllergyWarnings Table
INSERT INTO AllergyWarnings (WarningID, AllergyWarning, RecipeID) VALUES
(1, 'Contains gluten', 3),
(2, 'Contains eggs and dairy', 4),
(3, 'Contains shellfish', 5),
(4, 'Contains nuts', 6),
(5, 'Contains dairy', 7),
(6, 'Contains soy', 8),
(7, 'Contains wheat', 9),
(8, 'Contains fish', 10);

