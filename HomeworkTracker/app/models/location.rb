class Location < ActiveRecord::Base
  has_many :cohorts
  has_many :users

  validates :city, presence: :true
  validates :description, presence: :true
end
