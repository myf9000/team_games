module Teams
  module Models
    class Team < ActiveRecord::Base
      has_many :team_users
      has_many :users, through: :team_users, dependent: :destroy

      validates :name, presence: true, length: { minimum: 3 }
    end
  end
end
