class AddMoreIndexes < ActiveRecord::Migration[6.0]
  def change
    add_index :guides_users, :user_id
    add_index :guides_users, :guide_id
    add_index :groups_users, :user_id
    add_index :groups_users, :group_id

    add_foreign_key :guides_users, :users
    add_foreign_key :guides_users, :guides
    add_foreign_key :groups_users, :users
    add_foreign_key :groups_users, :groups
  end
end
