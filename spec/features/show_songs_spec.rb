require 'rails_helper'

describe 'Viewing an individual song' do
    let(:artist) { create :artist }
    let(:song) { create :song, user: artist }

    it "shows the song's details" do
        visit song_url(song)

        expect(page).to have_text(song.name)
        expect(page).to have_text(song.year)
        expect(page).to have_text(song.time)
        expect(page).to have_text(song.album)
    end
end
