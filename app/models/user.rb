class User < ActiveRecord::Base
  validates :email, :username, :uid, presence: true

  def client
    @client ||= Octokit::Client.new(access_token: self.token)
  end

  def event_count
    @event_count = @events.group(:type).count
  end

end
