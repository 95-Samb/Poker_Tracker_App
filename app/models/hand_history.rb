class HandHistory < ApplicationRecord

  def self.hand_logic(input)
    file = File.read(input)
    hand_history = file.split("\n")
    holdings = hand_history[14].split("[").last[0..-2]
    ["#{holdings}","folds"]
  end

end
