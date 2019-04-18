require 'bundler'
Bundler.require

require_relative '../app/board'

class Show
 #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)

  def initialize(board) 
    @board = board
  end

  def show_menu
    board_case = @board.case_array
    puts " #{board_case[0].content} | #{board_case[1].content} | #{board_case[2].content}"
    puts "-----------"
    puts " #{board_case[3].content} | #{board_case[4].content} | #{board_case[5].content}"
    puts "-----------"
    puts " #{board_case[6].content} | #{board_case[7].content} | #{board_case[8].content}" 
  end

  def show_status

    #@board.case_array.each do |x|
      #if x.content.class == String
       # affiche = x.content  
      #end
    board_case = @board.case_array
    puts " #{board_case[0].content} | #{board_case[1].content} | #{board_case[2].content}"
    puts "-----------"
    puts " #{board_case[3].content} | #{board_case[4].content} | #{board_case[5].content}"
    puts "-----------"
    puts " #{board_case[6].content} | #{board_case[7].content} | #{board_case[8].content}" 
    
  

end
end
board = Board.new
show = Show.new(board)
player1 = Player.new("x")
board.play_turn(player1, 8)
#board.case_array.each do |cell|
 #puts cell.content
#end
show.show_menu

