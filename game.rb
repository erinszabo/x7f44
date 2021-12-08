class Game

  WELCOME_MESSAGE = "Welcome to Shut da Box!"
  Win_Message = "You shut da box!"

  attr_reader :box, :dice

  def initialize(box, dice)
    @box = box
    @dice = dice
  end

  def over?
    box.shut? || box.possible_flips?(dice, box.tiles) 
  end

  def start!
    prepare_next_round
  end

  def prepare_next_round
    dice.each(&:roll!)
  end

  def play
    print '| '
    box.tiles.each do |tile|
      print tile.to_s + ' | '
    end
    print "\n"
    print "You rolled: "
    dice.each do |die|
      print "#{die.roll_value} "
    end
    puts "\n"
    puts "Which tiles would you like to flip (separate by spaces): "
    tiles_to_flip = gets.chomp
    prepare_next_round
  end

  def results
    box.shut? ? Win_Message : "Game over, you did not shut da box."
  end

end
