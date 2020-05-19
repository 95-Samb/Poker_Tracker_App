class HandHistory < ApplicationRecord

  def self.hand_logic(input)
    file = File.read(input)
    hand_history = file.split("\n")
    holdings = []
    holdings[0] = hand_history[14].split("[").last[0..-2]
    if hand_history[69]
      holdings[1] = hand_history[68].split("[").last[0..-2]
      holdings[1][2] = ","
    end
    holdings[0][2] = ","
    [holdings,"folds"]
  end

end
