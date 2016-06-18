class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.string :title
      t.text :context
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
