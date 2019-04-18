require 'bundler'
Bundler.require

require_relative "player"

class BoardCase

  attr_reader :position, :content

  def initialize(position)
    @position = position
    @content = ""
    puts "Empty board case n.#{position} created."
  end

  def active(content)
    @content = content
    puts "Case #{@position} activated with #{@content}"
  end
end

#case_array = []
#  (0..8).each do |i|
#    case_array[i] = BoardCase.new(i)
#  end

#player1 = Player.new("Bidule", "x")
#player2 = Player.new("Machin", "o")
#case_array[1].active(player1.sign)
#case_array[5].active(player2.sign)
