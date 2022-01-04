# This class is responsible for the user's actions. It handles actions the user might take.
class Controller
  attr_accessor :user, :computer, :points

  def initialize(points)
    @points = Points.new
    @user = nil
    @computer = nil
  end

  def win(choice, computer_choice)
    @points.win
    Message.win_msg(choice, computer_choice)
  end

  def loose(choice, computer_choice)
    @points.loose
    Message.loose_msg(choice, computer_choice)
  end

  def tie(choice, computer_choice)
    Message.tie_msg(choice, computer_choice)
  end

  def result
    current_result.to_s
  end

  def quit
    final_result.to_s
  end

private

  def current_result
    if points.user > points.computer
      current_result_win
    elsif points.user < points.computer
      current_result_loose
    else
      current_result_tie
    end
  end

  def final_result
    if points.user > points.computer
      final_result_win
    elsif points.user < points.computer
      final_result_loose
    else
      final_result_tie
    end
  end

  def current_result_win
    Message.current_result_win_msg(@points.user, @points.computer)
  end

  def current_result_loose
    Message.current_result_loose_msg(@points.user, @points.computer)
  end

  def current_result_tie
    Message.current_result_tie_msg(@points.user, @points.computer)
  end

  def final_result_win
    Message.final_result_win_msg(@points.user, @points.computer)
  end

  def final_result_loose
    Message.final_result_loose_msg(@points.user, @points.computer)
  end

  def final_result_tie
    Message.final_result_tie_msg(@points.user, @points.computer)
  end
end
