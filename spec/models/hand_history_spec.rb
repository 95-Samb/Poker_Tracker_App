require 'rails_helper'

RSpec.describe HandHistory, type: :model do
  context "for the hand logic method" do
    context "for 1st single hand" do
      file = File.open(Rails.root.join "files for testing/1 cash hand example.txt")
      it "returns Hero's holding" do
        expect(HandHistory.hand_logic(file)[0]).to eq("7c,Ac")
      end
      it "returns Hero's preflop action" do
        expect(HandHistory.hand_logic(file)[1]).to eq("folds")
      end
    end
    context "for 2nd single hand" do
      file = File.open(Rails.root.join "files for testing/2nd 1 cash hand example.txt")
      it "returns Hero'holding" do
        expect(HandHistory.hand_logic(file)[0]).to eq("Tc,3s")
      end
    end
  end
end
