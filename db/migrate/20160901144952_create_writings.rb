class CreateWritings < ActiveRecord::Migration[5.0]
  def change
    create_table :writings do |t|
      t.references :user, foreign_key: true
      t.references :feed, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
