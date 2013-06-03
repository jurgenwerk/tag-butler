class AddTagGroupIdToFeed < ActiveRecord::Migration
  def change
    add_column :feeds, :tag_group_id, :integer
  end
end
