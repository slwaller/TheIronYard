class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.text :dr_name
      t.timestamps
    end
  end
end
