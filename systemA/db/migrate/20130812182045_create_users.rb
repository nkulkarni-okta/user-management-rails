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
      t.string :field1
      t.string :field2
      t.string :field3
      t.string :field4
      t.string :field5
      t.string :field6
      t.string :field7
      t.string :field8
      t.string :field9
      t.string :field10
      t.string :field11
      t.string :field12
      t.string :field13
      t.string :field14
      t.string :field15
      t.string :field16
      t.string :field17
      t.string :field18
      t.string :field19
      t.string :field20
      t.string :field21
      t.string :field22
      t.string :field23
      t.string :field24      
      t.timestamps
    end
  end
end
