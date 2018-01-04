class CreateDossierClassifications < ActiveRecord::Migration[5.1]
  def change
    create_table :dossier_classifications do |t|
      t.string :name
      t.timestamps
    end
  end
end
