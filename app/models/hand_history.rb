
class HandHistory < ApplicationRecord

  def self.hand_number(input)
    input.split("\n")[1].split(" ")[2][1..-2].to_i
  end

  def self.money_won(input)
    -0.01
  end

end
