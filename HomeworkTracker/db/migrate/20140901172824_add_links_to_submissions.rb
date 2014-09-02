class AddLinksToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :links, :string
  end
end
