# This class displays all strings messages to the user
class Message
attr_reader :choice, :computer_choice, :user, :computer, :points
  class << self

    def welcome_msg
      puts "Welcome to Rock, Paper, Scissors game. Press \"b\" to begin ! Press \"c\" for cheat mode. Press \"g\" to read the rules' guide.  "
    end

    def get_choice_msg
      puts "Choose : Rock, Paper, or Scissors ? (r: rock, p: paper, s: scissors, q: quit, x: result)"
    end

    def invalid_msg
      puts "Invalid input.\n\n"
    end

    def win_msg(choice, computer_choice)
      puts "You chose #{choice.to_s} and the computer chose #{computer_choice.to_s}. You win 1 point ! \n\n"
    end

    def loose_msg(choice, computer_choice)
      puts "You chose #{choice.to_s} and the computer chose #{computer_choice.to_s}. Computer win 1 point !\n\n"
    end

    def tie_msg(choice, computer_choice)
      puts "You chose #{choice.to_s} and the computer chose #{computer_choice.to_s}. It is a tie !\n\n"
    end

    def current_result_win_msg(user_points, computer_points)
      puts "You are winning with #{user_points} points vs the computer who have #{computer_points} points"
    end

    def current_result_loose_msg(user_points, computer_points)
      puts "You are loosing with #{user_points} points, and the computer winning with #{computer_points} points"
    end

    def current_result_tie_msg(user_points, computer_points)
      puts "No one is winning. You have #{user_points} points and the computer have #{computer_points} points"
    end

    def final_result_win_msg(user_points, computer_points)
      puts "Congratulations! You won with #{user_points} points VS the computer who got #{computer_points} points"
    end

    def final_result_loose_msg(user_points, computer_points)
      puts "Sorry... you lost the game with #{user_points} points, and the computer won with #{computer_points} points"
    end

    def final_result_tie_msg(user_points, computer_points)
      puts "No one won. It is a tie between you and the computer. You got #{user_points} points and the computer got #{computer_points} points"
    end
  end
end
