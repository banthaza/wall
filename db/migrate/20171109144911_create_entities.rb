class CreateEntities < ActiveRecord::Migration[5.1]
  def change
    create_table :entities do |t|
      t.string :name
      t.integer :entity_type_id
      t.timestamps
    end
  end
end
