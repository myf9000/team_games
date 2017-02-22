module Teams
  module Representers
    class TeamRepresenter
      def initialize(team)
        @team = team
      end

      def basic
        {
          id: @team.id,
          name: @team.name,
        }
      end

      def with_users
        basic
          .merge(users: team_users)
      end

      private

      def team_users
        @team_users ||=
          @team.users.map { |user| ::Teams::Representers::UserRepresenter.new(user).basic }
      end
    end
  end
end
