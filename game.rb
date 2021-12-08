class Game

  WELCOME_MESSAGE = "Welcome to Shut da Box!"
  win_message = "You shut da box!"
  lose_message = "Game over, you did not shut da box."

  attr_reader :box, :dice

  def initialize(box, dice)
    @box = box
    @dice = dice
  end

  def over?
    box.shut? || box.possible_flips?(dice, box.tiles) 
  end

  def prepare_next_round
    dice.each(&:roll!)
  end

  def play
    prepare_next_round
    display_tiles
    display_roll
    chose_flip
    prepare_next_round
  end

  def display_roll
    print "\n"
    print "You rolled: "
    dice.each do |die|
      print "#{die.roll_value} "
    end
  end 

  def display_tiles
    print '| '
    box.tiles.each do |tile|
      print tile.to_s + ' | '
    end
  end


  def chose_flip
    puts "\n"
    puts "Which tiles would you like to flip (separate by spaces): "
    tiles_to_flip = gets.chomp
  end

  def results
    box.shut? ? win_message : lose_message
  end

end
