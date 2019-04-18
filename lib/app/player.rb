require 'bundler'
Bundler.require

class Player
  attr_accessor :name
  attr_reader :sign

  def initialize(sign)
    print "> "
    @name = gets.chomp.capitalize
    @sign = sign
    puts "Player #{@name} created, your sign is #{@sign}."
  end
end

#array = ['O','X']
#players = []
#array.each do |sign|
#  players << Player.new(sign)
#end
#print players
