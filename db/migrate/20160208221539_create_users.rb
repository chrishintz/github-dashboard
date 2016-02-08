class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :uid
      t.string :avatar_url
      t.string :token
      t.string :email
      t.string :location
      t.string :followers
      t.string :following
      t.string :owned_repos
      t.string :collaborated_repos
      t.string :gists
      t.string :public_repos
      t.string :private_repos

      t.timestamps null: false
    end
  end
end
