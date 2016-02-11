class UsersController < ApplicationController

  def show
    @github_user = current_user.client.user
  end

  def data
    render json: [
      {flavor: "Cherry", votes: rand(100)},
      {flavor: "Apple", votes: rand(100)},
      {flavor: "Pumpkin", votes: rand(100)},
      {flavor: "Strawberry Rhubarb", votes: rand(100)},
      {flavor: "Blackberry", votes: rand(100)},
    ]    
  end

end
