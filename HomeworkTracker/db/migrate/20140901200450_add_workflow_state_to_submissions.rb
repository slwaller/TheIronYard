class AddWorkflowStateToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :workflow_state, :string
  end
end
