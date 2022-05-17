class GroupAutomation < ApplicationRecord
  belongs_to :group
  belongs_to :guide
  has_many :guides_users, dependent: :destroy
  has_many :group_automation_for_users, dependent: :destroy

  def sync_group_automations_for_users_to_user_ids(user_ids)
    group_automation_for_users.destroy_all
    user_ids.each do |user_id|
      GroupAutomationForUser.create_group_automation_for_user(self, User.find(user_id))
    end
  end
end
