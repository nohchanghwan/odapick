class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
        t.string :email_id, unique: true
        t.string :password
        t.string :name
        t.string :gender
        t.datetime :birth
        t.string :job
        joined_at :datetime
      t.timestamps null: false
    end
  end
end
