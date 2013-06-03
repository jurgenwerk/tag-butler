class AddUserIdToTagGroup < ActiveRecord::Migration
  def change
    add_column :tag_groups, :user_id, :integer
  end
end
