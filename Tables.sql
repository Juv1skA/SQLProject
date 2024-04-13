-- Category Table
CREATE TABLE Category (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(255) NOT NULL
);

-- Recipe Table
CREATE TABLE Recipe (
    RecipeID INT PRIMARY KEY,
    RecipeName VARCHAR(255) NOT NULL,
    TotalCookingTime INT,
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

-- Ingredients Table
CREATE TABLE Ingredients (
    IngredientID INT PRIMARY KEY,
    IngredientName VARCHAR(255) NOT NULL,
    Quantity VARCHAR(50),
    RecipeID INT,
    FOREIGN KEY (RecipeID) REFERENCES Recipe(RecipeID)
);

-- CookingHardware Table
CREATE TABLE CookingHardware (
    HardwareID INT PRIMARY KEY,
    HardwareName VARCHAR(255) NOT NULL,
    RecipeID INT,
    FOREIGN KEY (RecipeID) REFERENCES Recipe(RecipeID)
);

-- Instructions Table
CREATE TABLE Instructions (
    InstructionID INT PRIMARY KEY,
    InstructionText TEXT NOT NULL,
    RecipeID INT,
    FOREIGN KEY (RecipeID) REFERENCES Recipe(RecipeID)
);

-- AlternativeIngredients Table
CREATE TABLE AlternativeIngredients (
    AlternativeID INT PRIMARY KEY,
    OriginalIngredientID INT,
    AlternativeIngredientName VARCHAR(255) NOT NULL,
    RecipeID INT,
    FOREIGN KEY (OriginalIngredientID) REFERENCES Ingredients(IngredientID),
    FOREIGN KEY (RecipeID) REFERENCES Recipe(RecipeID)
);

-- AlternativeRecipes Table
CREATE TABLE AlternativeRecipes (
    AlternativeID INT PRIMARY KEY,
    OriginalRecipeID INT,
    AlternativeRecipeID INT,
    FOREIGN KEY (OriginalRecipeID) REFERENCES Recipe(RecipeID),
    FOREIGN KEY (AlternativeRecipeID) REFERENCES Recipe(RecipeID)
);

-- Images Table
CREATE TABLE Images (
    ImageID INT PRIMARY KEY,
    ImageURL VARCHAR(255) NOT NULL,
    RecipeID INT,
    FOREIGN KEY (RecipeID) REFERENCES Recipe(RecipeID)
);

-- AllergyWarnings Table
CREATE TABLE AllergyWarnings (
    WarningID INT PRIMARY KEY,
    AllergyWarning VARCHAR(255) NOT NULL,
    RecipeID INT,
    FOREIGN KEY (RecipeID) REFERENCES Recipe(RecipeID)
);
