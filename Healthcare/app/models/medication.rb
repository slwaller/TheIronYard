class Medication < ActiveRecord::Base
  belongs_to :patient

  validates :name, presence: true
end
