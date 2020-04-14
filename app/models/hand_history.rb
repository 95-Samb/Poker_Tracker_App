class HandHistory < ApplicationRecord
  has_one_attached :file

  history = HandHistory.new.file

  def self.hand_logic(input)
    "7c,Ac"
  end
end
