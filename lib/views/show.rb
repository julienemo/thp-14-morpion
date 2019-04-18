require 'bundler'
Bundler.require

require_relative '../app/board'

class Show
  # "show" only does one thing : print the board
  # so it only needs to know one thing : what board
  # in fact it shows the content of the board
  # to get the content we do board.case_array[index].content
  attr_reader :board

  def initialize
   @board = Board.new
  end

  def show_menu
    # in the menu, we put the index of each board case
    # user can type the corresponding number to activate the case
    # activate = put a "x" or a "o"
    board_case = @board.case_array
    content_array = []

    # here I say
    # if there is already either "o" or "x" in a cell
    # the case won't show number in the menu
    board_case.each do |x|
      if x.content.class == String
       content_array << " "
      else
        content_array << x.content
      end
    end

    puts "     -----------"
    puts "      #{content_array[0]} | #{content_array[1]} | #{content_array[2]}"
    puts "     -----------"
    puts "      #{content_array[3]} | #{content_array[4]} | #{content_array[5]}"
    puts "     -----------"
    puts "      #{content_array[6]} | #{content_array[7]} | #{content_array[8]}"
    puts "     -----------"
    puts ""
    print "> Your choice here: "
  end

  def show_status
    # in the status, we put the "o" or "x"
    content_array = []

    # here I say
    # unless there is already either "o" or "x" in a cell
    # the case won't show number in the menu
    @board.case_array.each do |x|
      if x.content.class == String
       content_array << x.content
      else
        content_array << " "
      end
    end

    puts "You've made your move ! Here's your new board: "
    puts ""
    puts "     -----------"
    puts "      #{content_array[0]} | #{content_array[1]} | #{content_array[2]}"
    puts "     -----------"
    puts "      #{content_array[3]} | #{content_array[4]} | #{content_array[5]}"
    puts "     -----------"
    puts "      #{content_array[6]} | #{content_array[7]} | #{content_array[8]}"
    puts "     -----------"
    puts ""
  end
end
