class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def new
  end

  def create
    @group = Group.new(group_params)
    @group.save
    redirect_to @group
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])

    updated_group_params = group_params
    puts("~~~~~~~~~~~~~~~")
    puts(updated_group_params)
    puts('~~~~~~~~~~~~~~~~~~~')
    if updated_group_params[:user_ids]
      updated_user_ids = updated_group_params[:user_ids].map(&:to_i)
    end
    if @group.update(updated_group_params)
      @group.group_automations.each do |group_automation|
        group_automation.sync_group_automations_for_users_to_user_ids(updated_user_ids)
      end

      redirect_to @group
    else
      render 'edit'
    end
  end

  def show
    @group = Group.find(params[:id])
  end

  def edit_users
    @group = Group.find(params[:id])
  end

  def add_automation
    @group = Group.find(params[:id])
  end

  private

  def group_params
    params.require(:group).permit(:name, {user_ids: []})
  end
end
