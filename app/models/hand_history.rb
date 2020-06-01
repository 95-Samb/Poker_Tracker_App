class HandHistory < ApplicationRecord

  def self.hand_logic(input)
    file = File.read(input)
    hand_history = file.split("\n")
    output = []
    hand = {}
    holding_lines = HandHistory.lines_containing_string(input,"Dealt to")
    holding_lines.map! {|i| i - 1}
    i = 0
    while i < holding_lines.length
      hand[:holdings] = hand_history[holding_lines[i]].split("[").last[0..-2]
      hand[:holdings][2] = ","
      hand[:preflop_action] = "folds"
      output.push(hand)
      i += 1
    end
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
