class Box

  attr_reader :shut_tiles, :number_of_tiles, :tiles

  def initialize(number_of_tiles)
    @number_of_tiles = number_of_tiles
    @tiles = []

    @number_of_tiles.times do |i|
      @tiles << i + 1
    end

    @shut_tiles = []
  end

  def shut?
    @tiles.empty? && @shut_tiles.length == number_of_tiles
  end

  def possible_flips?(dice, tiles) # dice.map(&:roll_value).reduce(:+)
    # false
    # check if the sum of the dice can equal any sum of the tiles left to flip
    # dice.map(&:roll_value).reduce(:+)
    true
  end

end
