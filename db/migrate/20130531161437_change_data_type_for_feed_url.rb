class ChangeDataTypeForFeedUrl < ActiveRecord::Migration
  def self.up
    change_table :feeds do |t|
      t.change :url, :text
    end
  end
 
  def self.down
    change_table :feeds do |t|
      t.change :url, :string
    end
  end
end
