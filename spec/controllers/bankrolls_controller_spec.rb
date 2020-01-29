require 'rails_helper'

RSpec.describe BankrollsController, type: :controller do
  it "has a button" do
    visit '/bankrolls'
    page.has_button?("Hello")
  end

end
