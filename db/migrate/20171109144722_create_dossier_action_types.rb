class CreateDossierActionTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :dossier_action_types do |t|
      t.string :name

    end
  end
end
