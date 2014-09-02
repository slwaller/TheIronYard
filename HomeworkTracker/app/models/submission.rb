class Submission < ActiveRecord::Base
  belongs_to :user
  belongs_to :student
  
  has_many :comments, as: :commentable
  validates :name, presence: :true
  belongs_to :assignment

  include Workflow
  workflow do
    state :new do
      event :review, transitions_to: :reviewing
    end
    state :reviewing do
      event :done, transitions_to: :complete
      event :undone, transitions_to: :incomplete
    end
    state :incomplete do
      event :review, transitions_to: :reviewing
      event :done, transitions_to: :complete
    end
    state :complete
  end
end
