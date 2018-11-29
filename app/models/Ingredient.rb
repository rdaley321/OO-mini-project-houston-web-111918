class Ingredient
  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    ##return the ingredient that the highest number of users are allergic to
    Allergen.all.group_by{|i| i.ingredient}.max{|x,y| x[1].length <=> y[1].length}[0]
  end
end
