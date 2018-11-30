require 'date'
require_relative '../config/environment.rb'

bordain = User.new("Anthony Bordain")
ramsey = User.new("Gordan Ramsey")
fieri = User.new("Guy Fieri")
emeril = User.new("Emeril")


nog = Recipe.new ("Eggnog")
jambalaya = Recipe.new ("Jambalaya")
dressing = Recipe.new ("Dressing")
mac_n_c = Recipe.new ("Mac n Cheese")
spaghetti = Recipe.new ("Spaghetti")
lamb = Recipe.new ("Lamb Sauce")


rc1 = RecipeCard.new(ramsey, lamb, '11/27/18', 5)
rc2 = RecipeCard.new(emeril, spaghetti, '3/6/01', 6)
rc3 = RecipeCard.new(bordain, mac_n_c, '9/17/14', 2)
rc4 = RecipeCard.new(fieri, jambalaya)
rc5 = RecipeCard.new(ramsey, nog, '1/12/93', 4)
rc6 = RecipeCard.new(fieri, dressing)
rc7 = RecipeCard.new(emeril, dressing, '3/6/01', 4)
rc8 = RecipeCard.new(emeril, nog, '3/6/01', 5)
rc9 = RecipeCard.new(emeril, nog, '3/6/01', 3)
rc10 = RecipeCard.new(emeril, nog, '3/6/01', 9)


ing1 = Ingredient.new('peanuts')
ing2 = Ingredient.new('shellfish')
ing3 = Ingredient.new('salt')


allergy1 = Allergen.new(emeril, ing1)
allergy2 = Allergen.new(emeril, ing2)
allergy3 = Allergen.new(bordain, ing1)


rec_ing1 = RecipeIngredient.new(ing1, lamb)
rec_ing2 = RecipeIngredient.new(ing2, spaghetti)
rec_ing3 = RecipeIngredient.new(ing1, nog)

binding.pry