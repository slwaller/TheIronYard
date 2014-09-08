class CreateSupDudes < ActiveRecord::Migration
  def change
    create_table :sup_dudes do |t|

      t.timestamps
    end
  end
end
