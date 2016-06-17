class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      
      t.string :email
      t.string :name
      t.datetime :activated
      t.boolean :admin, default: false
      t.string :password_digest
      t.string :authentication_token

      t.timestamps null: false
    end
  end
end
