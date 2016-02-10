class UsersController < ApplicationController

  def show
    @github_user = current_user.client.user
  end

end
