class Doctor < ActiveRecord::Base
  belongs_to :treatable, polymorphic: true
end
