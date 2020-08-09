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

# enumerable module, gives methods to work in Array, Hash such as map, include?, find and more
class Game
  include Enumerable
  attr_accessor :players

  # pretzeling a block
  def each(&block)
    players.each(&block)
  end

  def initialize
    @players = []
  end

  def add_player(player)
    players.push(player)
  end

  def score
    score = 0
    players.each do |player|
      score += player.score
    end
    score
  end
end

# creating Player and Game instances
player3 = Player.new("Nick", 95)
player4 = Player.new("Craig", 20)

game1 = Game.new
game1.add_player(player1)
game1.add_player(player2)

game2 = Game.new
game2.add_player(player3)
game2.add_player(player4)

# Is any score over 80 using the any? method
puts "Game score over 80: #{game1.any?{|player| player.score > 80}}"
# Use the find method to return an array of items that returns true for the block
players = game1.find_all{|player| player.score > 70}
puts 'Players with a score > 80', players.inspect
# iterate through players on the game instance
game2.each do |player|
  puts "Player: #{player.name}, score: #{player.score}"
end
