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
  end

  def languages
    @languages = current_user.client.repositories
    @languages = @languages.group_by do |language|
      language["language"]
    end
    render json: @languages
  end

end
