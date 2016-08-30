class AddUserIdToFeeds < ActiveRecord::Migration[5.0]
  def change
    add_column :feeds, :user_id, :integer
    add_index :feeds, :user_id
  end
end
