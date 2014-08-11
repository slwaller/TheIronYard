class AddWorkflowStateToPatient < ActiveRecord::Migration
  
  def change
    add_column :patients, :Waiting, :string
    add_column :patients, :Checkup, :string
    add_column :patients, :Xrays, :string
    add_column :patients, :Surgery, :string
    add_column :patients, :Paying, :string
    add_column :patients, :Leaving, :string
  end
end
