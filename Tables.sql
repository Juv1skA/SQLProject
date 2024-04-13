-- Recipe Table
CREATE TABLE Recipe (
    RecipeID INT PRIMARY KEY AUTO_INCREMENT,
    RecipeName VARCHAR(255),
    TotalCookingTime INT,
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

-- Ingredients Table
CREATE TABLE Ingredients (
    IngredientID INT PRIMARY KEY AUTO_INCREMENT,
    IngredientName VARCHAR(255),
    Quantity VARCHAR(100),
    RecipeID INT,
    FOREIGN KEY (RecipeID) REFERENCES Recipe(RecipeID)
);

-- CookingHardware Table
CREATE TABLE CookingHardware (
    HardwareID INT PRIMARY KEY AUTO_INCREMENT,
    HardwareName VARCHAR(255),
    RecipeID INT,
    FOREIGN KEY (RecipeID) REFERENCES Recipe(RecipeID)
);

-- Instructions Table
CREATE TABLE Instructions (
    InstructionID INT PRIMARY KEY AUTO_INCREMENT,
    InstructionText TEXT,
    RecipeID INT,
    FOREIGN KEY (RecipeID) REFERENCES Recipe(RecipeID)
);

-- AlternativeIngredients Table
CREATE TABLE AlternativeIngredients (
    AlternativeID INT PRIMARY KEY AUTO_INCREMENT,
    OriginalIngredientID INT,
    AlternativeIngredientName VARCHAR(255),
    RecipeID INT,
    FOREIGN KEY (OriginalIngredientID) REFERENCES Ingredients(IngredientID),
    FOREIGN KEY (RecipeID) REFERENCES Recipe(RecipeID)
);

-- AlternativeRecipes Table
CREATE TABLE AlternativeRecipes (
    AlternativeID INT PRIMARY KEY AUTO_INCREMENT,
    OriginalRecipeID INT,
    AlternativeRecipeID INT,
    FOREIGN KEY (OriginalRecipeID) REFERENCES Recipe(RecipeID),
    FOREIGN KEY (AlternativeRecipeID) REFERENCES Recipe(RecipeID)
);

-- Category Table
CREATE TABLE Category (
    CategoryID INT PRIMARY KEY AUTO_INCREMENT,
    CategoryName VARCHAR(255)
);

-- Images Table
CREATE TABLE Images (
    ImageID INT PRIMARY KEY AUTO_INCREMENT,
    ImageURL VARCHAR(255),
    RecipeID INT,
    FOREIGN KEY (RecipeID) REFERENCES Recipe(RecipeID)
);

-- AllergyWarnings Table
CREATE TABLE AllergyWarnings (
    WarningID INT PRIMARY KEY AUTO_INCREMENT,
    AllergyWarning VARCHAR(255),
    RecipeID INT,
    FOREIGN KEY (RecipeID) REFERENCES Recipe(RecipeID)
);
