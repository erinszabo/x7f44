class Die

  attr_reader :number_of_sides, :roll_value

  def initialize(number_of_sides, rand_num = Random.new)
    @number_of_sides = number_of_sides
    @roll_value = 1
    @rand_num = rand_num
  end

  def roll!
    self.roll_value = rand_num.rand(1..number_of_sides)
  end

  def makeRoll
    roll!
  end

end
