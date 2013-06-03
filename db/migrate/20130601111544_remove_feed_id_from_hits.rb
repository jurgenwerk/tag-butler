class RemoveFeedIdFromHits < ActiveRecord::Migration
  def up
    remove_column :hits, :feed_id
  end

  def down
    add_column :hits, :feed_id, :integer
  end
end
