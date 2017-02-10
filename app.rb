require "sinatra/base"
require "sinatra/activerecord"

module Teams
  module Routes
    Dir[File.join(File.dirname(__FILE__), "app", "routes/*.rb")].each { |file| require(file) }
  end

  module Models
    Dir[File.join(File.dirname(__FILE__), "app", "models/*.rb")].each { |file| require(file) }
  end

  class App < Sinatra::Base
    use Teams::Routes::Team
  end
end

include Teams::Models
