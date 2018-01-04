class CreateMetadatumTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :metadatum_types do |t|
      t.string :name
      t.string :description
      t.boolean :active
      t.timestamps
    end
  end
end
