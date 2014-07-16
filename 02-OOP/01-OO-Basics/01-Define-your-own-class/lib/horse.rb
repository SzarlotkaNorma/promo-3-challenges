class Horse

  attr_reader :name
  attr_reader :breed
  attr_reader :jockey_number
  attr_accessor :horse_running

  def initialize(name, breed, jockey_number)
    @name = name
    @breed = breed
    @jockey_number = jockey_number
    @horse_running = false
  end

end

horse_black_jack = Horse.new("Black Jack", "full blood", 10)

