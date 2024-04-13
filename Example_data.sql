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
(5, 'Garlic Shrimp Appetizer', 20, 5),
(6, 'Caesar Salad', 20, 6),
(7, 'Tomato Basil Soup', 25, 7),
(8, 'Beef Stroganoff', 40, 8),
(9, 'Garlic Mashed Potatoes', 25, 9),
(10, 'Iced Tea', 5, 10);

-- Inserting sample data into Ingredients Table
INSERT INTO Ingredients (IngredientID, IngredientName, Quantity, RecipeID) VALUES
(1, 'Eggs', '3', 1),
(2, 'Salt', 'To taste', 1),
(3, 'Chicken Breast', '2', 2),
(4, 'Lettuce', '1 head', 2),
(5, 'Spaghetti', '200g', 3),
(6, 'Ground Beef', '300g', 3),
(7, 'Chocolate', '200g', 4),
(8, 'Flour', '200g', 4);

-- Inserting sample data into CookingHardware Table
INSERT INTO CookingHardware (HardwareID, HardwareName, RecipeID) VALUES
(1, 'Frying Pan', 1),
(2, 'Grill', 2),
(3, 'Pot', 3),
(4, 'Oven', 4);

-- Inserting sample data into Instructions Table
INSERT INTO Instructions (InstructionID, InstructionText, RecipeID) VALUES
(1, 'Beat eggs and salt in a bowl. Heat frying pan and add beaten eggs. Cook until set.', 1),
(2, 'Season chicken breasts with salt and pepper. Grill until cooked through. Slice and serve over lettuce.', 2),
(3, 'Cook spaghetti according to package instructions. In a separate pan, brown ground beef. Add sauce and simmer. Serve over cooked spaghetti.', 3),
(4, 'Preheat oven to 350°F (175°C). Mix chocolate cake ingredients and bake for 30-35 minutes. Let cool before serving.', 4);

-- Inserting sample data into AlternativeIngredients Table
INSERT INTO AlternativeIngredients (AlternativeID, OriginalIngredientID, AlternativeIngredientName, RecipeID) VALUES
(1, 1, 'Egg Whites', 1),
(2, 6, 'Ground Turkey', 3),
(3, 7, 'Cocoa Powder', 4);

-- Inserting sample data into AlternativeRecipes Table
INSERT INTO AlternativeRecipes (AlternativeID, OriginalRecipeID, AlternativeRecipeID) VALUES
(1, 1, 2),
(2, 3, 4);

-- Inserting sample data into Images Table
INSERT INTO Images (ImageID, ImageURL, RecipeID) VALUES
(1, 'url_to_image1.jpg', 1),
(2, 'url_to_image2.jpg', 2),
(3, 'url_to_image3.jpg', 3),
(4, 'url_to_image4.jpg', 4);

-- Inserting sample data into AllergyWarnings Table
INSERT INTO AllergyWarnings (WarningID, AllergyWarning, RecipeID) VALUES
(1, 'Contains gluten', 3),
(2, 'Contains eggs and dairy', 4);
