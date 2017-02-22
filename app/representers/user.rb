module Teams
  module Representers
    class UserRepresenter
      def initialize(user)
        @user = user
      end

      def basic
        {
          id: @user.id,
          name: @user.name,
          email: @user.email,
        }
      end

      def with_teams
        basic
          .merge(teams: user_teams)
      end

      private

      def user_teams
        @user_teams ||=
          @user.teams.map { |team| ::Teams::Representers::TeamRepresenter.new(team).basic }
      end
    end
  end
end
