class AddPatiendIdToMedications < ActiveRecord::Migration
  def change
    add_column :medications, :patient_id, :integer
  end
end
