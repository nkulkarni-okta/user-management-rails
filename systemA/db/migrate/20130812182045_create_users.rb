class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :hashed_password
      t.string :firstName
      t.string :lastName
      t.string :manager
      t.string :mobilePhone
      t.integer :status
      t.string :postalAddress
      t.string :salt
      t.timestamps
    end
  end
end
