class User < ActiveRecord::Base
  validates :email, :username, :uid, presence: true

  def client
    @client ||= Octokit::Client.new(access_token: self.token)
  end

  # def authenticated?
  #   !!session[:access_token]
  # end

end
