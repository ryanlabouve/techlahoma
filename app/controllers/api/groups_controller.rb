class Api::GroupsController < ApplicationController

  def list_groups
    @groups = Usergroup.all
    render "api/groups/list_groups", :formats => [:json], :handlers => [:jbuilder], status: 200
  end
  
  def show_group
    @group = Usergroup.find(params[:id])
    render "api/groups/show_group", :formats => [:json], :handlers => [:jbuilder], status: 200
  end
    
end
