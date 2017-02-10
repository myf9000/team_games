class Teams::Routes::Team < Sinatra::Base
  register Sinatra::Namespace

  helpers do
    def team
      Team.find(params[:id])
    end
  end

  namespace "/api/v1" do
    get "/teams" do
      json Team.all
    end

    get "/teams/:id" do
      json team
    end
  end
end
