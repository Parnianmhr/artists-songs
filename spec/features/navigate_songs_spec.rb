require 'rails_helper'

describe "Navigating songs" do

  let(:song) { create :song}

  it "allows navigation from the detail page to the listing page" do
    visit song_url(song)

    click_link "Back"

    expect(current_path).to eq(songs_path)
  end
end
