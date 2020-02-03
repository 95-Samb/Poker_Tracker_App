require 'rails_helper'

RSpec.describe BankrollsController, type: :controller do
  it "has a button" do
    visit '/bankrolls'
    page.has_button?("Hello")
  end
  it "creates a new bankroll" do
    expect {post :create}.to change(Bankroll, :count).by(1)
  end

end
