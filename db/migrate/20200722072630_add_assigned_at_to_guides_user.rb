class AddAssignedAtToGuidesUser < ActiveRecord::Migration[6.0]
  def change
    add_column :guides_users, :created_at, :datetime, precision: 6, null: false
    add_column :guides_users, :updated_at, :datetime, precision: 6, null: false
  end
end
