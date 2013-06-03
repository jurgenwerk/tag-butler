class AddTitleToHits < ActiveRecord::Migration
  def change
    add_column :hits, :title, :string
  end
end
