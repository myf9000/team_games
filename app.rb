require "sinatra/base"
require "sinatra/activerecord"
require "sinatra/contrib"
require "./app/init.rb"

module Teams
  class App < Sinatra::Base
    use ::Teams::Routes::Team
  end
end

include Teams::Models
