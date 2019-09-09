class GroupsController < ApplicationController
  def index
    @group = Group.all
  end

  def show
    @group = Group.find_by(id: params[:id])
  end

  def create
    @group = User.new(group_params)
    @group.save
  end

  private

  def group_params
    params.require(:group).permit(:name)
  end
end
