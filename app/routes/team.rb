class Teams::Routes::Team < Sinatra::Base
  get "/" do
    "Hello, world"
  end

  get "/lol" do
    "LOL"
  end
end
