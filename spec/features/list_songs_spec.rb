require 'rails_helper'

describe 'Current user viewing the list of songs' do
    let!(:song1) { create :song, name: 'Name 1' }
    let!(:song2) { create :sond, name: 'Name 2' }
    let!(:song3) { create :song, name: 'Name 3' }
    let!(:song4) { create :song, name: 'Name 4' }
    let!(:song5) { create :song, name: 'Name 5' }

    it 'shows all songs' do
        visit songs_url

        expect(page).to have_text('Name 1')
        expect(page).to have_text('Name 2')
        expect(page).to have_text('Name 3')
    end
end
