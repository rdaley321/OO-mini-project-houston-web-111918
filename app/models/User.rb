class User
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    filter = RecipeCard.all.select do |card|
      card.user == self
    end
    filter.map{|card| card.recipe}
  end

  def add_recipe_card(recipe,date,rating)
    RecipeCard.new(self,recipe,data,rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(self,ingredient)
  end

  def allergens
    filter = Allergen.all.select do |allergen|
      allergen.user == self
    end
    filter.map{|allergen| allergen.ingredient}
  end

  def top_three_recipes
    ##should return top three highest rated recipes
    filter = RecipeCard.all.select do |card|
      card.user == self
    end
    sorted = filter.sort_by{|card| card.rating}
    top_three = [sorted[-1],sorted[-2],sorted[-3]]
    top_three.map{|one| one.recipe}
  end

  def most_recent_recipe
    ## should return the recipe mostse recently added to the user's cookbook
    filter = RecipeCard.all.select do |card|
      card.user == self
    end
    filter.max_by{|card| card.date}.recipe
  end

end
