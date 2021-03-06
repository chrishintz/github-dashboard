class SessionsController < ApplicationController

  def create
    oauth_attrs       = request.env['omniauth.auth']
    @user = User.find_or_initialize_by(uid:params[:uid])
    @user.username    = oauth_attrs.info.nickname
    @user.email       = oauth_attrs.info.email
    @user.avatar_url  = oauth_attrs.info.image
    @user.token       = oauth_attrs.credentials.token
    @user.uid         = oauth_attrs.uid
    @user.save
    session[:user_id] = @user.id
    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Signed Out!"
  end
end
