require 'rails_helper'

RSpec.describe Student, :type => :model do

  subject do
    Student.new({
      first_name: "Sam",
      last_name: "Waller"
    })
  end

    describe "names" do
    it "should return the first name of a first name object" do
      expect(subject.first_name).to include("Sam")
    end

    it "should return the first name of a last name object" do
      expect(subject.last_name).to include("Waller")
    end

    it "should not return empty strings for a first name object" do
      expect(subject.first_name).not_to be("")
    end

    it "should not return empty strings for a last name object" do
      expect(subject.last_name).not_to be("")
    end

    it "should not return a name of an ascended being" do
      expect(subject.first_name).not_to be("God")
    end

    it "should not return the curse associated with it" do
      expect(subject.last_name).not_to be("Damnit")
    end

  let(:studentlist) do
    Student.all({

    })

    it "should return the array mirror" do
    expect(:studentlist).to match_array(Student.all)
      end
    end
  end
end