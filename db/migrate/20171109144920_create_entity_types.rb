class CreateEntityTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :entity_types do |t|
      t.string :name
    end
  end
end
