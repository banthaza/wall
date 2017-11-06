class AddDocumentsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :documents do |t|
      t.string :name
      t.text :description
      t.integer :type
      t.integer :version
      t.timestamps
      end
  end
end
