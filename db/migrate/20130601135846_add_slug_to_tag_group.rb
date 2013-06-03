class AddSlugToTagGroup < ActiveRecord::Migration
  def change
    add_column :tag_groups, :slug, :string
  end
end
