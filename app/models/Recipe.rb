class Recipe
attr_accessor :ingredient

  @@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def users
  filter = RecipeCard.all.select do |recipecard|
    recipecard.recipe == self
  end
  filter.map do |recipecard|
    recipecard.user
  end
end

def ingredients
  filter = RecipeIngredient.all.select do |recipeingredient|
    recipeingredient.recipe == self
  end
  filter.map do |recipeingredient|
    recipeingredient.ingredient
  end
end

def allergens
  match = ingredients & Allergen.all.map{|allergen| allergen.ingredient}
  match == [] ? "none" : match
end

def add_ingredients(array)
  array.each do |ingredient|
    RecipeIngredient.new(recipe: self, ingredient: ingredient)
  end
end

def self.most_popular
  RecipeCard.all.group_by{|i| i.recipe}.max{|x,y| x[1].length <=> y[1].length}[0]
end

end
