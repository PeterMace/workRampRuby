class CreateGroupAutomations < ActiveRecord::Migration[6.0]
  def change
    create_table :group_automations do |t|
      t.string :name
      t.references :group, null: false, foreign_key: true
      t.references :guide, null: false, foreign_key: true

      t.timestamps
    end
  end
end
