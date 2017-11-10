class CreateEntities < ActiveRecord::Migration[5.1]
  def change
    create_table :entities do |t|
      t.string :name
      t.boolean :is_infringer
      t.boolean :is_consignor
      t.boolean :is_consignee
      t.boolean :is_connected_party
      t.timestamps
    end
  end
end
