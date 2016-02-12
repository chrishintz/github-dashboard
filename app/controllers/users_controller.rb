class UsersController < ApplicationController

  def show
    @github_user = current_user.client.user
  end

  def data
    @events = current_user.client.user_events(current_user.username, :per_page => 300)
    @events = @events.group_by do |type|
      type["type"]
    end
    render json: @events
    # @data = @github_user.group_by{|repo| repo["language"]}
    # render json: @data
  end

end
