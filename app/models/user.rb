module Teams
  module Models
    class User < ActiveRecord::Base
      has_many :team_users
      has_many :teams, through: :team_users

      validates :name, presence: true, length: { minimum: 3 }
      validates :email, presence: true, uniqueness: true,
                        format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/ }
    end
  end
end
