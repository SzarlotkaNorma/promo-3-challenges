def poor_calories_counter(burger, side, beverage)
  #TODO: return number of calories for this mcDonald order

  sum = 0
  calories = {
    "Cheese Burger" => 290,
    "Big Mac" => 300,
    "Mc Bacon" => 400,
    "Royal Cheese" => 130,
    "French fries" => 130,
    "Potatoes" => 130,
    "Coca" => 160,
    "Sprite" => 170,
  }

  calories[burger] + calories[side] + calories[beverage]

end

def calories_counter(*orders)
  #TODO: return number of calories for a less constrained order
end
