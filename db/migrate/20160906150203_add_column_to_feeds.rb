class AddColumnToFeeds < ActiveRecord::Migration[5.0]
  def change
    add_column :feeds, :focus, :string
  end
end
