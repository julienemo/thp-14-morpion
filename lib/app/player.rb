require 'bundler'
Bundler.require

class Player
  attr_accessor :name
  attr_reader :sign

  def initialize(sign)
    # sign is either "x" or "o"
    # for the name, we'll ask
    # so no need to pass parameter
    print '> '
    @name = gets.chomp.capitalize
    @sign = sign
    puts "#{@name} created, your sign is #{@sign}."
  end
end

# we would VERY MUCH like to avoid the case where
# two people name their players same
# but we didn't manage
