class Assignment < ActiveRecord::Base
  belongs_to :user
  belongs_to :student
  has_many :comments, as: :commentable
  has_many :submissions

  validates :name, presence: :true
end
