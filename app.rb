module Teams
  module Routes
    Dir[File.join(File.dirname(__FILE__), "app", "routes/*.rb")].each { |file| require(file) }
  end

  class App < Sinatra::Base
    use Teams::Routes::Team
  end
end
