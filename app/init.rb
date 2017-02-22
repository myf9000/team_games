module Teams
  module Models
    autoload :Team, './app/models/team.rb'
    autoload :User, './app/models/user.rb'
    autoload :TeamUser, './app/models/team_user.rb'
  end

  module Representers
    autoload :TeamRepresenter, './app/representers/team.rb'
    autoload :UserRepresenter, './app/representers/user.rb'
  end

  module Routes
    autoload :Team, './app/routes/team.rb'
    autoload :User, './app/routes/user.rb'
  end
end
