describe "uploading a single hand" do
  before(:each) do
    visit '/hand_histories/new'

    attach_file("hand_history_file",Rails.root + "files for testing/1 cash hand example.txt")

    click_button
  end

  it 'uploads without error' do
    expect(page).to have_content("hand 1")
  end

  describe "Relevant information displayed" do
    it "displays Hero's holding" do
      expect(page).to have_content("Hero: 7c,Ac")
    end
    it "displays Hero's preflop action" do
      expect(page).to have_content("Hero folds")
    end
  end
end
