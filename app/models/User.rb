class User
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def filter(the_class)
    the_class.all.select do |card|
      card.user == self
    end
  end

  def recipes
    filter(RecipeCard).map{|card| card.recipe}
  end

  def add_recipe_card(recipe,date,rating)
    RecipeCard.new(self,recipe,data,rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(self,ingredient)
  end

  def allergens
    filter(Allergen).map{|allergen| allergen.ingredient}
  end

  def top_three_recipes
    sorted = filter(RecipeCard).sort_by{|card| card.rating}
    top_three = [sorted[-1],sorted[-2],sorted[-3]]
    top_three.map{|one| one.recipe}
  end

  def most_recent_recipe
    filter(RecipeCard).max_by{|card| card.date}.recipe
  end

end
