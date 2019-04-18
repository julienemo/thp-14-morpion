require 'bundler'
Bundler.require

class Player
  attr_accessor :name
  attr_reader :sign

  def initialize(name, sign)
    @name = name
    @sign = sign
    puts "Player #{@name} created, your sign is #{@sign}."
  end
end

#player1 = Player.new("Bidule", "x")
