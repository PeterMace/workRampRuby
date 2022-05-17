class CreateGroupAutomationForUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :group_automation_for_users do |t|
      t.references :group_automation, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
