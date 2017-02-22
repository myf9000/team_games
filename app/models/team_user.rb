module Teams
  module Models
    class TeamUser < ActiveRecord::Base
      belongs_to :team
      belongs_to :user

      validates :user, :team, presence: true
      validates :user_id, uniqueness: { scope: :team_id }
    end
  end
end
