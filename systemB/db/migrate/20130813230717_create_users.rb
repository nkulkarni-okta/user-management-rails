class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :hashed_password
      t.string :firstName
      t.string :lastName
      t.string :manager
      t.string :phoneNumber
      t.integer :status
      t.string :street
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :salt
      t.timestamps
    end
  end
end
