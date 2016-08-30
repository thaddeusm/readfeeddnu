class AddContextToFeeds < ActiveRecord::Migration[5.0]
  def change
    change_column :feeds, :context, :text, limit: 60000
  end
    
  def down
    change_column :feeds, :context, :string
  end
end
