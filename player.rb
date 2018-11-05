class Player
  attr_reader :name, :lives

  def initialize(name)
    @lives = 3
    @name = name
  end

  def deduct_life
    @lives = @lives - 1
  end

  def is_alive?
    @lives > 0
  end

end