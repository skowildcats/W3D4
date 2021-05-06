class Square
  attr_reader :revealed
  attr_accessor :bomb

  def initialize()
    @revealed = false
    @bomb = false
  end

end