require 'rails_helper'

RSpec.describe Cohort, :type => :model do

  subject do
    Cohort.new({
      course: "Ruby",
    })
  end

    describe "course" do
    it "should return the full name of a course object" do
      expect(subject.course).to include("Ruby")
    end

    it "should not return empty strings for a course object" do
      expect(subject.course).not_to be("")
    end

    it "should not return a bad word for a course object" do
      expect(subject.course).not_to be("Shit")
    end
end






end
