describe "uploading a single hand" do
  before(:each) do
    visit '/hand_histories/new'

    attach_file("file",Rails.root + "files for testing/1 cash hand example.txt")

    click_button
  end

  it 'uploads without error' do
    expect(page).to have_content("Dealt to")
  end

  describe "Relevant information displayed" do
    it "displays hand number" do
      expect(page).to have_content("208415630916")
    end
    it "displays money won" do
      expect(page).to have_content("-$0.01")
    end
    it "displays hole cards" do
      expect(page).to have_content("[7s Ac]")
    end
  end
end
