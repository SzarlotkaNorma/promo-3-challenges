  require 'csv'

class Cookbook

  attr_reader = :recipes

  def initialize(csv_file)
    @recipes = []
Crumpets,Crumpets description
    @filepath =
  end

  def load_csv
    CSV.foreach(@filepath) do |row|
     @recipes << Recipe.new(row[0], row[1])
    end
  end

  def save
    CSV.open(@filepath, 'w') do |csv|
      @recipes.each do |recipe|
        csv << [recipe]
      end
    end
  end


  def add_recipe(recipe)
    @recipes << @recipe
    save
  end


  def remove_recipe(index)
    @recipes = @recipes.delete_at(index)
  end

  def return_recipe(recipe_id)
    return @recipes[recipe_id]
  end

end

cb = Cookbook.new('recipes.csv')
p cb
