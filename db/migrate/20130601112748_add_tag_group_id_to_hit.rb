class AddTagGroupIdToHit < ActiveRecord::Migration
  def change
    add_column :hits, :tag_group_id, :integer
  end
end
