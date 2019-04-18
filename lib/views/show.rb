require 'bundler'
Bundler.require

require_relative '../app/board'

class Show
 #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)

  def initialize 
    @board = Board.new
  end

  def show_menu
    board_case = @case_array
    puts " #{board_case[0].index} | #{board_case[1].index} | #{board_case[2].index} "
    puts "-----------"
    puts " #{board_case[3].index} | #{board_case[4].index} | #{board_case[5].index} "
    puts "-----------"
    puts " #{board_case[6].index} | #{board_case[7].index} | #{board_case[8].index} " 
  end

  def show_status
    board_case = @board.case_array
    puts " #{board_case[0].content} | #{board_case[0].content} | #{board_case[0].content}"
    puts "-----------"
    puts " #{board_case[0].content} | #{board_case[0].content} | #{board_case[0].content}"
    puts "-----------"
    puts " #{board_case[0].content} | #{board_case[0].content} | #{board_case[0].content}" 
  end
end

 show = Show.new
 show.show_status