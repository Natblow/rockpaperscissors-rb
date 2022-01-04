# This class gets valid input from the user
class Interface

  MODES = {
    "b" => :fairplay,
    "c" => :cheat,
    "g" => :rules
  }

  CHOICES = {
    "r" => :rock,
    "p" => :paper,
    "s" => :scissors,
    "q" => :quit,
    "x" => :result,
  }

VALID_CHOICES = CHOICES.keys
VALID_MODES = MODES.keys

  def get_game_mode
    MODES[get_valid_mode]
  end

  def get_user_choice
    CHOICES[get_valid_choice]
  end

  def get_computer_choice
    [:rock, :paper, :scissors].sample
  end

private

  def get_valid_mode
    Message.welcome_msg
    validate_mode(gets.chomp) || wrong_mode_input
  end

  def get_valid_choice
    Message.get_choice_msg
    validate(gets&.chomp) || wrong_input
  end

  def validate_mode(mode)
    VALID_MODES.detect { |valid_modes| valid_modes == mode }
  end

  def validate(choice)
    VALID_CHOICES.detect { |valid_choices| valid_choices == choice }
  end

  def wrong_mode_input
    Message.invalid_msg
    get_valid_mode
  end

  def wrong_input
    Message.invalid_msg
    get_valid_choice
  end
end
