class AddCohortIdToStudents < ActiveRecord::Migration
  def change
    add_column :students, :cohort_id, :integer
  end
end
