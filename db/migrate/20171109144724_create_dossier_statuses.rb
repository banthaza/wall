class CreateDossierStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :dossier_statuses do |t|
      t.string :name
      t.timestamps
    end
  end
end
