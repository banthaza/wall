class CreateDossierEntityLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :dossier_entity_link_Types do |t|
      t.string :name
    end
  end
end
