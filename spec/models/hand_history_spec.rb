require 'rails_helper'

RSpec.describe HandHistory, type: :model do
  file = File.open(Rails.root.join "files for testing/1 cash hand example.txt")
  context "for the hand logic method" do
    it "returns Hero's holding" do
      expect(HandHistory.hand_logic(file)).to eq("7c,Ac")
    end
  end
end
