class Teams::Routes::Team < Sinatra::Base
  register Sinatra::Namespace

  helpers do
    def team
      Team.find(params[:id])
    end

    def team_representer
      ::Teams::Representers::TeamRepresenter
    end
  end

  namespace "/api/v1" do
    get "/teams" do
      json Team.all.map { |team| team_representer.new(team).basic }
    end

    get "/teams/:id" do
      json team_representer.new(team).with_users
    end
  end
end
