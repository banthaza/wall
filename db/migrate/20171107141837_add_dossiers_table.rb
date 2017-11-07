class AddDossiersTable < ActiveRecord::Migration[5.1]
  def change
    create_table :dossiers do |t|
      t.integer :country_id
      t.integer :status_id
      t.string :name
      t.timestamps
    end

    create_table :dossier_statuses do |t|
      t.integer :name
      t.timestamps
    end

  end
end
