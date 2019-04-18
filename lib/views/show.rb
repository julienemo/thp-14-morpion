require 'bundler'
Bundler.require

require_relative '../app/board'

class Show
 #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)

  def initialize(board)
    @board = board
  end

  def show_board
board_case = @board.case_array

puts " #{board_case[0]} | #{board_case[1]} | #{board_case[2]} "
puts "-----------"
puts " #{board_case[3]} | #{board_case[4]} | #{board_case[5]} "
puts "-----------"
puts " #{board_case[6]} | #{board_case[7]} | #{board_case[8]} " 
  end
end