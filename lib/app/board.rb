require 'bundler'
Bundler.require

require_relative "player"
require_relative 'boardcase'

class Board
  attr_accessor :case_array

  def initialize
    @case_array = []
    (0..8).each do |i|
      @case_array[i] = BoardCase.new(i, i)
    end
  end
end