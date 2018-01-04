class CreateDossiers < ActiveRecord::Migration[5.1]
  def change
    create_table :dossiers do |t|
      t.integer :country_id
      t.integer :status_id
      t.integer :classification_id
      t.string :name
      t.string :background
      t.string :attorney
      t.string :reported_by
      t.datetime :next_due_date
      t.timestamps
    end
  end
end
