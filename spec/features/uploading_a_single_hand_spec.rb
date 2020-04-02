describe "uploading a single hand" do
  it 'uploads without error' do
    visit '/hand_histories/new'

    attach_file("hand_history_file",Rails.root + "files for testing/1 cash hand example.txt")

    click_button

    expect(page).to have_content("hand 1")
  end
end
