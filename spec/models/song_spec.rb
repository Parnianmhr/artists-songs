require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "validations" do
    it "is invalid without a name" do
      song = Song.new(name: "")
      song.valid?
      expect(song.errors).to have_key(:name)
    end

    it "is invalid without a album" do
      song = Song.new(album: "")
      song.valid?
      expect(song.errors).to have_key(:album)
    end
  end

  describe "#is_long?" do
    let(:artist) { create :artist }
    let(:is_long_song) { create :song, time: 10}
    let(:non_long_song) { create :song, time: 2}

    it "returns true if the length is smaller than 3 minutes" do
      expect(is_long_song.is_long?).to eq(false)
      expect(non_long_song.is_long?).to eq(true)
    end
  end

end
