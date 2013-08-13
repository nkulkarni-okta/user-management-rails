class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :hashed_password
      t.string :first_name
      t.string :last_name
      t.string :manager
      t.string :mobile_phone
      t.integer :status
      t.string :postal_address
      t.string :salt
      t.timestamps
    end
  end
end
