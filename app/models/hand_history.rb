
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

  def self.hand_info(hand_history)
    hand_array = hand_history.split("\n")
    last_index = hand_array.index("*** SUMMARY ***") - 1
    hand_array[2..last_index].join("\n")
  end

  def self.holdings(hand)
    hand.each_line do |line|
      if line.include?("Dealt to")
        return line.split("[")[1][0..-3]
      end
    end
  end

  def self.split_history(read_file)
    line_array = read_file.split("\n")
    line_array.delete_if{|line| line.empty?}
    start_of_hands = []
    line_array.each_index{|line| start_of_hands.push(line) if line_array[line].include?("***********") }
    [line_array[start_of_hands[0]..(start_of_hands[1] - 1)].join("\n"),
    line_array[start_of_hands[1]..-1].join("\n")]
  end
end
