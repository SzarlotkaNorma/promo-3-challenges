class Restaurant

  #TODO add relevant accessors if necessary
  attr_accessor :average_rating

  def initialize(city, name, average_rating)
    #TODO: implement constructor with relevant instance variables
    @city = city
    @name = name
    @average_rating = average_rating
  end

  def rate(average_rating)
  end

  #TODO: implement #filter_by_city and #rate methods

  def self.filter_by_city(retaurants, city)

  end

end

