class ApplicationController < ActionController::Base
  def run_all_group_automations
    GroupAutomation.all.each do |group_automation|
      group_automation.group_automation_for_users.each do |group_automation_for_user|
        GuidesUser.create_new_guides_user_from_automation(group_automation, group_automation.guide, group_automation_for_user.user)
      end
    end

    redirect_to '/'
  end

  def delete_all_guides_users
    Guide.all.each do |guide|
      guide.users.destroy_all
    end

    redirect_to '/'
  end
end
