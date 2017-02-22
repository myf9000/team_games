class Teams::Routes::User < Sinatra::Base
  register Sinatra::Namespace

  helpers do
    def user
      User.find(params[:id])
    end

    def user_representer
      ::Teams::Representers::UserRepresenter
    end
  end

  namespace "/api/v1" do
    get "/users" do
      json User.all.map { |user| user_representer.new(user).basic }
    end

    get "/users/:id" do
      json user_representer.new(user).with_teams
    end
  end
end
