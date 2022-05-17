class AddAutomationIdToGuidesUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :guides_users, :group_automation_id, :integer, null: false
    add_index :guides_users, :group_automation_id
  end
end
