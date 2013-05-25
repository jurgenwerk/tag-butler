class AddFeedIdToTag < ActiveRecord::Migration
  def change
    add_column :tags, :feed_id, :integer
  end
end
