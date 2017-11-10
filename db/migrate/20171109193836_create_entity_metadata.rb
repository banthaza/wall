class CreateEntityMetadata < ActiveRecord::Migration[5.1]
  def change
    create_table :entity_metadata do |t|
      t.integer :entity_id
      t.integer :metadata_type_id
      t.string :value
      t.timestamps
    end
  end
end
