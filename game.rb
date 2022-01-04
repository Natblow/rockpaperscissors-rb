# Main class that runs the program
class Game
  attr_accessor :choice, :computer_choice, :mode

  def initialize
    @interface = Interface.new
    @points = Points.new
    @controller = Controller.new(@points)
    @rules = Rules.new
    @mode = nil
    @choice = nil
    @computer_choice = nil
  end

  def play
    begin
      choose_mode_and_play
    rescue Interrupt
      Message.invalid_msg
    end
  end

private

  def choose_mode_and_play
    get_valid_mode
    case mode
    when :cheat
      cheat_mode
    when :fairplay
      fairplay_mode
    when :rules
      @rules.read_rules
      Game.new.play
    end
  end

  def fairplay_mode
    while @choice != :quit
      playing
    end
  end

  def cheat_mode
    while @choice != :quit
      playing_by_cheating
    end
  end

  def playing_by_cheating
    get_cheated_choices
    user_vs_computer
  end

  def playing
    get_all_choices
    user_vs_computer
  end

  def user_vs_computer
    case choices_outcome [choice, computer_choice]
    when :win
      @controller.win(choice, computer_choice)
    when :loose
      @controller.loose(choice, computer_choice)
    when :tie
      @controller.tie(choice, computer_choice)
    else
      result_or_quit
    end
  end

  # This method defines the winners and loosers based on the rules of the game
  def choices_outcome(values)
    return @rules.choices_outcome(values)
  end

  def get_all_choices
    get_user_choice
    get_computer_choice
  end

  def get_cheated_choices
    get_user_choice
    get_computer_choice_cheat
  end

  def get_computer_choice
    @computer_choice = @interface.get_computer_choice
  end

  def get_computer_choice_cheat
    @computer_choice = cheat
  end

  # Cheat method is for the computer choice so that it always wins.
  def cheat
    case choice
    when :rock
      :paper
    when :paper
      :scissors
    when :scissors
      :rock
    end
  end

  # This method will get valid input from user when ask to choose the game mode.
  def get_valid_mode
    @mode = @interface.get_game_mode
  end

  # This method will get valid input from user when playing.
  def get_user_choice
    @choice = @interface.get_user_choice
  end

  def result_or_quit
    @controller.send @choice
  end
end
