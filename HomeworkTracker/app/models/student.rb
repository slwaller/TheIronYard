class Student < ActiveRecord::Base
  has_many :submissions
  belongs_to :cohort

  validates :first_name, presence: :true
  validates :last_name, presence: :true
end
