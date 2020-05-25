require 'rails_helper'

RSpec.describe HandHistory, type: :model do
  context "for the hand logic method" do
    context "for 1st single hand" do
      file = File.open(Rails.root.join "files for testing/1 cash hand example.txt")
      it "returns Hero's holding" do
        expect(HandHistory.hand_logic(file)[0][:holdings]).to eq("7s,Ac")
      end
      it "returns Hero's preflop action" do
        expect(HandHistory.hand_logic(file)[0][:preflop_action]).to eq("folds")
      end
    end
    xcontext "for 2nd single hand" do
      file = File.open(Rails.root.join "files for testing/2nd 1 cash hand example.txt")
      it "returns Hero'holding" do
        expect(HandHistory.hand_logic(file)[0][0]).to eq("Tc,3s")
      end
      it "returns Hero's preflop action" do
        expect(HandHistory.hand_logic(file)[1]).to eq("folds")
      end
    end
    xcontext "for 2 hands" do
      file = File.open(Rails.root.join "files for testing/2 cash hand example.txt")
      it "returns Hero's 2nd hand holding" do
        expect(HandHistory.hand_logic(file)[0][1]).to eq("Tc,3s")
      end
      it "returns Hero's preflop action" do
        expect(HandHistory.hand_logic(file)[1]).to eq("folds")
      end
    end
    xcontext "for 3 hands" do
      file = File.open(Rails.root.join "files for testing/3 cash hand example.txt")
      it "returns Hero's 3rd hand holding" do
        expect(HandHistory.hand_logic(file)[0][2]).to eq("Ks,Qh")
      end
      it "returns Hero's preflop action" do
        expect(HandHistory.hand_logic(file)[1]).to eq("calls $0.04")
      end
    end
  end
end
