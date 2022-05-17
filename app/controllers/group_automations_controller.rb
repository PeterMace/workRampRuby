class GroupAutomationsController < ApplicationController
  def create
    @group_automation = GroupAutomation.new(group_automation_params)
    @group_automation.group_id = params[:id]
    @group_automation.save

    @group_automation.group.users.each do |user|
      GroupAutomationForUser.create_group_automation_for_user(@group_automation, user)
    end

    redirect_to @group_automation.group
  end

  def destroy
    @group_automation = GroupAutomation.find(params[:id])
    group = @group_automation.group
    @group_automation.destroy

    redirect_to group
  end

  private

  def group_automation_params
    params.require(:group_automation).permit(:name, :guide_id)
  end
end
