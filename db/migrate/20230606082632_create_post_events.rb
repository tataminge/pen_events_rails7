class CreatePostEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :post_events do |t|
      t.integer :genre_id, null: false, foreign_key: true
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.string :body, null: false
      t.string :url, null: false
      t.integer :member_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
