class AddMoreFk < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :guides_users, :group_automations
  end
end
