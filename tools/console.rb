require_relative '../config/environment.rb'

recipe1 = Recipe.new("recipe1")
recipe2 = Recipe.new("recipe2")
recipe3 = Recipe.new("recipe3")
recipe4 = Recipe.new("recipe4")
recipe5 = Recipe.new("recipe5")

user1 = User.new("user1")
user2 = User.new("user2")
user3 = User.new("user3")
user4 = User.new("user4")
user5 = User.new("user5")

ingredient1 = Ingredient.new("ing1")
ingredient2 = Ingredient.new("ing2")
ingredient3 = Ingredient.new("ing3")
ingredient4 = Ingredient.new("ing4")
ingredient5 = Ingredient.new("ing5")

myrecipe1 = RecipeCard.new(user: user1, recipe: recipe2, date: "Jan1", rating: 10)
myrecipe2 = RecipeCard.new(user: user1, recipe: recipe1, date: "Jan1", rating: 20)
myrecipe3 = RecipeCard.new(user: user1, recipe: recipe3, date: "Jan2", rating: 30)
myrecipe4 = RecipeCard.new(user: user1, recipe: recipe3, date: "Jan1", rating: 40)
myrecipe5 = RecipeCard.new(user: user1, recipe: recipe1, date: "Jan5", rating: 50)
myrecipe6 = RecipeCard.new(user: user1, recipe: recipe1, date: "Jan1", rating: 5)
myrecipe7 = RecipeCard.new(user: user4, recipe: recipe4, date: "Jan10", rating: 11)
myrecipe8 = RecipeCard.new(user: user3, recipe: recipe1, date: "Jan1", rating: 2)
myrecipe9 = RecipeCard.new(user: user5, recipe: recipe4, date: "Jan1", rating: 8)

recipe1.add_ingredients([ingredient1,ingredient3])
recipe2.add_ingredients([ingredient2,ingredient5])
recipe3.add_ingredients([ingredient3,ingredient4])
recipe4.add_ingredients([ingredient5,ingredient2])
recipe5.add_ingredients([ingredient2,ingredient1])

allergy1 = Allergen.new(user: user1, ingredient: ingredient4)
allergy2 = Allergen.new(user: user2, ingredient: ingredient2)
allergy3 = Allergen.new(user: user3, ingredient: ingredient5)
allergy4 = Allergen.new(user: user3, ingredient: ingredient4)
allergy5 = Allergen.new(user: user3, ingredient: ingredient2)
allergy6 = Allergen.new(user: user3, ingredient: ingredient2)
allergy7 = Allergen.new(user: user3, ingredient: ingredient5)

binding.pry
