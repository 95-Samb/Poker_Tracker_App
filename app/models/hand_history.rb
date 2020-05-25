class HandHistory < ApplicationRecord

  def self.hand_logic(input)
    file = File.read(input)
    hand_history = file.split("\n")
    output = []
    hand = {}
    hand[:holdings] = hand_history[14].split("[").last[0..-2]
    hand[:holdings][2] = ","
    hand[:preflop_action] = "folds"
    output.push(hand)
    output
  end

end
