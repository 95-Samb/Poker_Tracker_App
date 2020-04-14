describe "uploading 2 hands" do
  before(:each) do
    visit '/hand_histories/new'

    attach_file("hand_history_file",Rails.root + "files for testing/2 cash hand example.txt")

    click_button
  end
  describe "It displays correct information" do
    it "displays Hero's holding in 2nd Hand" do
      expect(page).to have_content("Hero: Tc,3s")
    end
  end
end
