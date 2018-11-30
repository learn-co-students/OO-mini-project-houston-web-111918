require 'date'

class User
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  
  def recipes
    # User#recipes should return all of the recipes this user has recipe cards for
    RecipeCard.all.select {|recipes| recipes.user == self}.map {|user_recipe| user_recipe.recipe}
  end
  
  def add_recipe_card(recipe, date, rating)
    # User#add_recipe_card should accept a recipe instance as an argument, as well as a date and rating, and create a new recipe card for this user and the given recipe
    
    # binding.pry
    RecipeCard.new(self, recipe, date, rating)
  end
  
  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end
  
  def allergens
    Allergen.all.select{|allergy| allergy.user == self}.map{|ing| ing.ingredient}
  end
  
  def top_three_recipes
    # returns top 3 recipes for User
    RecipeCard.all.select {|rc| rc.user == self}.sort_by{|y| y.rating}.reverse[0..2].map{|z| z.recipe}
  end
  
  def most_recent_recipe
    binding.pry
    RecipeCard.all.select{|x| x.date}.map{|y| y.date}.sort_by{Date.parse}[-1]
  end

end
