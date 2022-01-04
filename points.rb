# This class counts the points of the user and computer
class Points
  attr_accessor :user, :computer

  def initialize
    @user = 0
    @computer = 0
  end

  def win
    @user += 1
  end

  def loose
    @computer += 1
  end
end
