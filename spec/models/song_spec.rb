require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "validations" do
    context "attribute present?" do
      it "name present" do
        song = Song.new(name: "")
        song.valid?
        expect(song.errors).to have_key(:name)
      end
      it "album optional" do
        song1 = Song.new(album: "Some Awesome text")
        song2 = Song.new(album: "")
        song1.valid?
        song2.valid?
        expect(song1.errors).not_to have_key(:album)
        expect(song2.errors).not_to have_key(:album)
      end
    end
    context "check maximum length" do
      it "name length" do
        song = Song.new(name: "a"*51)
        song.valid?
        expect(song.errors).to have_key(:name)
      end
      it "album length" do
        song = Song.new(album: "a"*51)
        song.valid?
        expect(song.errors).to have_key(:album)
      end
    end
  end
  describe "Relation to parent" do
    it "is linked to it's parent" do
      artist = Artist.new
      song = Song.new(artist: artist)
      expect(song.artist).to eq(artist)
    end
  end
end
