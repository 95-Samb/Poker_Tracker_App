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

  # following method acquired from
  # https://stackoverflow.com/questions/38263910/finding-certain-ruby-word-in-txt-file
  def self.lines_containing_string(filename,string)
    rx = Regexp.new(Regexp.escape(string), true)
    matches_array = []
    i = 1
    IO.foreach(filename) do |line|
      matches_array.push(i) if line[rx]
      i += 1
    end
    matches_array
  end

end
