class OrangeTree

  #Tree grows 1m every year until age10
  #Tree lives min age50 : probability of dying = 0
  #Tree lives max age100 : probablity of dying increases 50-100
  #From age 5-10 tree produces 100 fruits/year
  #From age 10-15 tree producs 200 gruits/year
  #Every year fruits that were not picked, fall off

  ###Be able to measure tree
  ###Be able to pick a fruit from the tree
  ###Be able to count the fruits left on the tree

  attr_reader :age, :height, :fruits,

  def initialize
    @age = 0
    @height = 0
    @fruits = 0
  end

  def dead?
   (51..100).to_a.sample < @age
  end

  def one_year_passes!
    @age += 1

    if @age <= 10
      @height += 1
    end
  end







end




