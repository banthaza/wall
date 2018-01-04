class CreateEntityRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :entity_roles do |t|
      t.string :name
    end
  end
end
