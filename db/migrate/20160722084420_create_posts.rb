class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
        t.string :title
        t.text :po_content
        t.string :url
        t.string :image , default: ""
        t.integer :avg_point
        t.string :anniversary
        t.string :age_group
        t.string :gift_gender
        t.datetime :posted_at
      t.timestamps null: false
    end
  end
end
