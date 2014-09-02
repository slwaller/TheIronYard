class Cohort < ActiveRecord::Base
  belongs_to :location
  has_many :students

  validates :course, presence: :true
end
