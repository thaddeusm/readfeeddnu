class AddPromptToFeeds < ActiveRecord::Migration[5.0]
  def up
    change_column :feeds, :prompt, :text, limit: 60000
  end
  # back to previous version
  def down
    change_column :feeds, :prompt, :string
  end
end
