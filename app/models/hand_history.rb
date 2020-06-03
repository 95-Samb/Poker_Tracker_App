
class HandHistory < ApplicationRecord

  def self.hand_number(input)
    input.split("\n")[1].split(" ")[2][1..-2].to_i
  end

  def self.money_won(input)
    user = HandHistory.user(input) + ":"
    money = 0
    input.each_line do |line|
      if line.include?(user)
        money -= line.split(" ").last[1..-1].to_f
      elsif line.include?(user[0..-2] + " collected")
        money = line.split(" ")[2][1..-1].to_f
      end
    end
    money
  end

  def self.user(input)
    input.each_line do |line|
      if line[0..4] == "Dealt"
        return line.split(" ")[2]
      end
    end
  end

end
