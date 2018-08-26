# start irb
# > load './module.rb'
# > SimpleModule
  # or
# > SimpleModule::VERSION
module SimpleModule
  VERSION = 1.0
end

# multiple levels of modules can be used to namespace items:
module LaserBots
  module Console
    class Command
    end
  end

  module World
    class Player
      attr_reader :name
      def initialize(name)
        @name = name
      end
    end
  end
end
# classes, modules, and contants can then be accessed by using the constant resolution operator(::) to get to nested namespace:begin
player = LaserBots::World::Player.new("Player 1")
puts player.name
