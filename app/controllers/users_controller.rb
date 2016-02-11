class UsersController < ApplicationController

  def show
    @github_user = current_user.client.user
  end

  def data
    @events = current_user.client.user_events(current_user.username, :per_page => 300)
    render json: @events.to_json
    # @data = @github_user.group_by{|repo| repo["language"]}
    # render json: @data
  end

end
