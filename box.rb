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

  def possible_flips?(dice, tiles_left) # dice.map(&:roll_value).reduce(:+)
    # check if the sum of the dice can equal any sum of the tiles left to flip
    dice_sum = dice.map(&:roll_value).reduce(:+)
    # tiles_left.reduce(:+) > dice_sum
    # ^something with this, running out of time^
    # true
    false
  end

end
