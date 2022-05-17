class GroupAutomationForUser < ApplicationRecord
  belongs_to :group_automation
  belongs_to :user

  def self.create_group_automation_for_user(group_automation, user)
    GroupAutomationForUser.new(
      group_automation: group_automation,
      user: user
    ).save
  end
end
