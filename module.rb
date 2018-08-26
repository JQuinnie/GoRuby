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

# comparable module is a mixin that provides behavior to help with ordering classes
# define spaceship operator and get all comparable methods for free
class Player
  include Comparable

  attr_accessor :name, :score

  def <=>(other_player)
    score <=> other_player.score
  end

  def initialize(name, score)
    @name = name
    @score = score
  end
end

player1 = Player.new("Jason", 100)
player2 = Player.new("Kenneth", 80)

puts "player1 > player2: %s" % (player1 > player2)
puts "player1 < player2: %s" % (player1 < player2)

# math module with class methods
# in irb, > Math::E
# class method > Math.sqrt(9) or > Math.log(2, 10)
