class CreatePersons < ActiveRecord::Migration[5.1]
  def change
    create_table :persons do |t|
      t.string :first_name
      t.string :initials
      t.string :last_name
      t.string :aliases
      t.string :address
      t.string :phone_number
      t.string :email
      t.timestamps
    end
  end
end
