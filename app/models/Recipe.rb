class Recipe
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def users
    # returns User instances for each recipe
    RecipeCard.all.select {|recipe_card| recipe_card.recipe == self}.map {|recipe_user| recipe_user.user}
  end
  
  def ingredients
    RecipeIngredient.all.map(&:ingredient)
  end
  
  def allergens
    # Ryan's solution - Google
    match = ingredients & Allergen.all.map{|allergen| allergen.ingredient}
    match == [] ? 'none' : match
  end
  
  def add_ingredient(array)
    # binding.pry
    array.each {|x| RecipeIngredient.new(x, self)}
  end

end
