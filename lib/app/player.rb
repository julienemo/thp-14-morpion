require 'bundler'
Bundler.require

class Player
  attr_accessor :name
  attr_reader :sign

  def initialize(sign)
    print "> "
    @name = gets.chomp.capitalize
    @sign = sign
    puts "#{@name} created, your sign is #{@sign}."
  end
end

