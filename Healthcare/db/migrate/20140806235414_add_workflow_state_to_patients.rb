class AddWorkflowStateToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :workflow_state, :string
  end
end
