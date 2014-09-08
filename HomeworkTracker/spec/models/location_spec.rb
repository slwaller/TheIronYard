require 'rails_helper'

RSpec.describe Location, :type => :model do

  subject do
    Location.new({
      city: "Seoul",
      description: "This place has some awesome food"
    })
  end

    describe "city" do

    it "should return the name of a city object" do
      expect(subject.city).to include("Seoul")
    end

    it "should not return the name of a body organ" do
      expect(subject.city).not_to include("Lung")
    end

    it "should not return empty strings for a city's object" do
      expect(subject.city).not_to be("")
    end

    it "should not return a bad word for a city object" do
      expect(subject.city).not_to be("POOP")
    end
  end

  describe "description" do

    it "should return the description of an object" do
      expect(subject.description).to include("This place has some awesome food")
    end

    it "should not return empty text for a description object" do
      expect(subject.description).not_to be("")
    end
  end


end