class UserGroupController < ApplicationController

  def index
    @groups = Usergroup.all
  end
end
