# This class defines the winner and looser of the game
class Rules

# Below scenarios in the arrays are from the viewpoint of the player [player choice vs adversary choice]
USER_WINS_SCENARIOS = [[:scissors, :paper], [:paper, :rock], [:rock, :scissors]]
COMPUTER_WINS_SCENARIOS =  USER_WINS_SCENARIOS.map(&:reverse)
DRAW = [[:rock, :rock], [:paper, :paper], [:scissors, :scissors]]

  def choices_outcome(values)
      return :win if USER_WINS_SCENARIOS.include?(values)
      return :loose if COMPUTER_WINS_SCENARIOS.include?(values)
      return :tie if DRAW.include?(values)
  end

  def read_rules
    File.open("read_rules.txt").each do |line|
      puts line
    end
  end
end
