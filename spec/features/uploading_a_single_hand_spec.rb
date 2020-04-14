describe "uploading a single hand" do
  before(:all) do
    visit '/hand_histories/new'

    attach_file("hand_history_file",Rails.root + "files for testing/1 cash hand example.txt")

    click_button
  end

  it 'uploads without error' do
    expect(page).to have_content("hand 1")
  end
end
