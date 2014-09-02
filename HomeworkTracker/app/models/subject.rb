class Subject < ActiveRecord::Base
  belongs_to :student
  belongs_to :cohort
  belongs_to :user
end
