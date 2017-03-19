require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "validations" do
    context "attribute present?" do
      it "is not valid without a name" do
        artist = Artist.new(name: "")
        artist.valid?
        expect(artist.errors).to have_key(:name)
      end
      it "Is not valid without a describtion" do
        artist = Artist.new(describtion: "")
        artist.valid?
        expect(artist.errors).to have_key(:describtion)
      end
      it "is not valid without a country" do
        artist = Artist.new(country: "")
        artist.valid?
        expect(artist.errors).to have_key(:country)
      end
    end
    context "check maximum length" do
      it "name length" do
        artist = Artist.new(name: "a"*51)
        artist.valid?
        expect(artist.errors).to have_key(:name)
      end
      it "describtion length" do
        artist = Artist.new(describtion: "a"*501)
        artist.valid?
        expect(artist.errors).to have_key(:describtion)
      end
      it "country length" do
        artist = Artist.new(country: "a"*51)
        artist.valid?
        expect(artist.errors).to have_key(:country)
      end
    end
  end
  describe "Relation to a song" do
    it "has songs" do
      artist = Artist.new
      second_artist = Artist.new
      song1 = Song.new(artist: artist)
      song2 = Song.new(artist: second_artist)
      expect(artist.songs).to contain(song1)
      expect(artist.songs).not_to contain(song2)
    end
  end
end
