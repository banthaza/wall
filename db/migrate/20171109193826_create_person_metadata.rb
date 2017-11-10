class CreatePersonMetadata < ActiveRecord::Migration[5.1]
  def change
    create_table :person_metadata do |t|
      t.integer :person_id
      t.integer :metadata_type_id
      t.string :value
      t.timestamps
    end
  end
end
