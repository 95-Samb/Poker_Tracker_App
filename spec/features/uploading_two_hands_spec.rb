xdescribe "uploading 2 hands" do
  before(:each) do
    visit '/hand_histories/new'

    attach_file("file",Rails.root + "files for testing/2 cash hand example.txt")

    click_button
  end
  describe "It displays correct information" do
    it "displays Hero's holding in 2nd Hand" do
      expect(page).to have_content("Hero: Tc,3s")
    end
    it "displays Hero's preflop action" do
      expect(page).to have_content("Hero folds")
    end
  end
end
