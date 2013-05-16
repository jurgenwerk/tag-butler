class AddFeedIdToHit < ActiveRecord::Migration
  def change
    add_column :hits, :feed_id, :integer
  end
end
