class GuidesUser < ApplicationRecord
  belongs_to :group_automation
  belongs_to :guide
  belongs_to :user

  def self.create_new_guides_user_from_automation(group_automation, guide, user)
    GuidesUser.new(
      group_automation: group_automation,
      guide: guide,
      user: user
    ).save
  end
end
