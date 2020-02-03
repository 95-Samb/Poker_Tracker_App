require "rails_helper"

RSpec.describe "bankrolls/new", type: :view do
  before(:each) do
    assign(:bankroll, Bankroll.new())
  end

  it "renders new bankroll form" do
    render

    assert_select "form[action=?][method=?]", bankrolls_path, "post" do
    end
  end
end

#taken from a scaffolded app
