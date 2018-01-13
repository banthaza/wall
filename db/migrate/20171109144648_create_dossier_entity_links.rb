class CreateDossierEntityLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :dossier_entity_links do |t|
      t.integer :dossier_id
      t.integer :entity_id
      t.integer :link_type_id
      t.string :background
      t.timestamps
    end
  end
end
