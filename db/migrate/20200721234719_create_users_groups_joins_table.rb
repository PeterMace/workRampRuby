class CreateUsersGroupsJoinsTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :users, :groups
  end
end
