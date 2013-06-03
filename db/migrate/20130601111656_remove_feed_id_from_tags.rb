class RemoveFeedIdFromTags < ActiveRecord::Migration
  def up
    remove_column :tags, :feed_id
  end

  def down
    add_column :tags, :feed_id, :integer
  end
end
