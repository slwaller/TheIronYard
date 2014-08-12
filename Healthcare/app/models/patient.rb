class Patient < ActiveRecord::Base

  belongs_to :hospital
  has_many :medications
  has_many :doctors, as: :treatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :dob,
  date: { before: Proc.new { Date.today }, message: 'must be valid date' },
  on: :create
  validates :reason, presence: true
  validates :gender, presence: true

include Workflow
  workflow do
    state :Waiting do
      event :check, transitions_to: :Checkup
      event :xray, transitions_to: :Xrays
      event :scalpel, transitions_to: :Surgery
      event :discharge, transitions_to: :Leaving
    end
    state :Checkup do
      event :wait, transitions_to: :Waiting
      event :xray, transitions_to: :Xrays
      event :scalpel, transitions_to: :Surgery
      event :charge, transitions_to: :Paying
    end
    state :Xrays do
      event :wait, transitions_to: :Waiting
      event :check, transitions_to: :Checkup
      event :scalpel, transitions_to: :Surgery
      event :charge, transitions_to: :Paying

    end
    state :Surgery do
      event :wait, transitions_to: :Waiting
      event :xray, transitions_to: :Xrays
      event :check, transitions_to: :Checkup
      event :charge, transitions_to: :Paying

    end
    state :Paying do
      event :discharge, transitions_to: :Leaving
    end
    state :Leaving
  end
end
