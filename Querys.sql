-- QUERY 1
-- Retrieves all recipes in the "Dinner" category.
SELECT r.RecipeID, r.RecipeName
FROM Recipe r
INNER JOIN Category c ON r.CategoryID = c.CategoryID
WHERE c.CategoryName = 'Dinner';

-- QUERY 2
-- Lists all ingredients for the recipe "Scrambled Eggs".
SELECT i.IngredientName, i.Quantity
FROM Ingredients i
INNER JOIN Recipe r ON i.RecipeID = r.RecipeID
WHERE r.RecipeName = 'Scrambled Eggs';

-- QUERY 3
-- Finds alternative ingredients for the recipe "Spaghetti Bolognese".
SELECT a.AlternativeIngredientName
FROM AlternativeIngredients a
INNER JOIN Ingredients i ON a.OriginalIngredientID = i.IngredientID
INNER JOIN Recipe r ON i.RecipeID = r.RecipeID
WHERE r.RecipeName = 'Spaghetti Bolognese';

-- QUERY 4
-- Displays all recipes along with their cooking hardware requirements.
SELECT r.RecipeName, ch.HardwareName
FROM Recipe r
LEFT JOIN CookingHardware ch ON r.RecipeID = ch.RecipeID;

-- QUERY 5
-- Shows recipes with their respective allergy warnings.
SELECT r.RecipeName, aw.AllergyWarning
FROM Recipe r
LEFT JOIN AllergyWarnings aw ON r.RecipeID = aw.RecipeID;

-- QUERY 6
-- Lists alternative recipes along with their original recipes.
SELECT ar.AlternativeID, o.RecipeName AS OriginalRecipe, a.RecipeName AS AlternativeRecipe
FROM AlternativeRecipes ar
INNER JOIN Recipe o ON ar.OriginalRecipeID = o.RecipeID
INNER JOIN Recipe a ON ar.AlternativeRecipeID = a.RecipeID;

-- QUERY 7
-- Retrieves recipes with their corresponding images.
SELECT r.RecipeName, i.ImageURL
FROM Recipe r
LEFT JOIN Images i ON r.RecipeID = i.RecipeID;

-- QUERY 8
-- Displays recipes along with their instructions.
SELECT r.RecipeName, ins.InstructionText
FROM Recipe r
INNER JOIN Instructions ins ON r.RecipeID = ins.RecipeID;

-- QUERY 9
-- Lists all categories along with the number of recipes in each category.
SELECT c.CategoryName, COUNT(r.RecipeID) AS NumberOfRecipes
FROM Category c
LEFT JOIN Recipe r ON c.CategoryID = r.CategoryID
GROUP BY c.CategoryName;

-- QUERY 10
-- Shows recipes with their alternative ingredients.
SELECT r.RecipeName, ai.AlternativeIngredientName
FROM Recipe r
LEFT JOIN AlternativeIngredients ai ON r.RecipeID = ai.RecipeID;

-- QUERY 11
-- This query searches for recipes containing a specific ingredient (in this case, 'Chicken') and retrieves the recipe name, the ingredient name, and any associated allergy warnings.
SELECT r.RecipeName, i.IngredientName, aw.AllergyWarning
FROM Recipe r
INNER JOIN Ingredients i ON r.RecipeID = i.RecipeID
LEFT JOIN AllergyWarnings aw ON r.RecipeID = aw.RecipeID
WHERE i.IngredientName = 'Chicken';

-- UPDATE 1
-- Updates recipes cooking time
UPDATE Recipe
SET TotalCookingTime = <new_time>
WHERE RecipeID = <recipe_id>;

-- UPDATE 2
-- Updates quantity of a ingredient
UPDATE Ingredients
SET Quantity = '<new_quantity>'
WHERE IngredientID = <ingredient_id>;

-- DELETE 1
/*  This query deletes a recipe and all associated data from related tables.
    It removes the recipe with the specified ID from the Recipe table and also deletes
    all corresponding entries in the Ingredients, CookingHardware, Instructions, Images,
    AllergyWarnings, AlternativeIngredients, and AlternativeRecipes tables.*/
DELETE FROM Recipe WHERE RecipeID = <recipe_id>;
DELETE FROM Ingredients WHERE RecipeID = <recipe_id>;
DELETE FROM CookingHardware WHERE RecipeID = <recipe_id>;
DELETE FROM Instructions WHERE RecipeID = <recipe_id>;
DELETE FROM Images WHERE RecipeID = <recipe_id>;
DELETE FROM AllergyWarnings WHERE RecipeID = <recipe_id>;
DELETE FROM AlternativeIngredients WHERE RecipeID = <recipe_id>;
DELETE FROM AlternativeRecipes WHERE OriginalRecipeID = <recipe_id> OR AlternativeRecipeID = <recipe_id>;
