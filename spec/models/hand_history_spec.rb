require 'rails_helper'

RSpec.describe HandHistory, type: :model do
  context "for 1 cash hand example" do
    before(:all) do
      file = File.open(Rails.root.join "files for testing/1 cash hand example.txt")
      @hand_history = file.read
    end
    it "returns the correct number" do
      expect(HandHistory.hand_number(@hand_history)).to eq(208415630916)
    end
    it "returns money won" do
      expect(HandHistory.money_won(@hand_history)).to eq(-0.01)
    end
    it "identifies the correct user" do
      expect(HandHistory.user(@hand_history)).to eq("StuffedPeppr")
    end
    it "returns correct complete hand information" do
      expect(HandHistory.hand_info(@hand_history)).to eq(@hand_history.split("\n")[2..40].join("\n"))
    end
  end
  context "for 2nd 1 cash hand example" do
    before(:all) do
      file = File.open(Rails.root.join "files for testing/2nd 1 cash hand example.txt")
      @hand_history = file.read
    end
    it "returns the correct number" do
      expect(HandHistory.hand_number(@hand_history)).to eq(208415618147)
    end
    it "returns money won" do
      expect(HandHistory.money_won(@hand_history)).to eq(0)
    end
    it "returns correct complete hand information" do
      expect(HandHistory.hand_info(@hand_history)).to eq(@hand_history.split("\n")[2..41].join("\n"))
    end
  end
  context "for 3rd 1 cash hand example" do
    before(:all) do
      file = File.open(Rails.root.join "files for testing/3rd 1 cash hand example.txt")
      @hand_history = file.read
    end
    it "returns money won" do
      expect(HandHistory.money_won(@hand_history)).to eq(0.52)
    end
    it "returns correct complete hand information" do
      expect(HandHistory.hand_info(@hand_history)).to eq(@hand_history.split("\n")[2..41].join("\n"))
    end
  end
end
