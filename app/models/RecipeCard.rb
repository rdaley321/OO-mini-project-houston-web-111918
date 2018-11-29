class RecipeCard
attr_accessor :date, :rating, :user, :recipe
  @@all = []

  def initialize(user:, rating:, date:, recipe:)
    @user = user
    @rating = rating
    @date = date
    @recipe = recipe
    @@all << self
  end

  def self.all
    @@all
  end

end
