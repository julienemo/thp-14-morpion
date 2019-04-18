require 'bundler'
Bundler.require

require_relative "player"
require_relative 'boardcase'
class Board
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
  attr_accessor :case_array

  def initialize

    @case_array = []
    (0..8).each do |i|
      @case_array[i] = BoardCase.new(i, i)
    end

    @case_array.each do |cell|
       #puts cell.content
    end
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
  end

  def play_turn(player, index)
    show.show_menu
    # @case_array[index].active(player.sign)
    # player_choice = []
	  puts "Please choose a case:"
    player_choice = gets.chomp
    @case_array[player_choice].active(player.sign)
    show.show_status
  end
  
  private

  def line?(array, a, b, c)
  	if (array[a] == array[b]) && (array[a] == array[c]) && array[a] != 0 
  		return true
  	else
  		return false
  	end
  end

  def one_line?(array)
  	if line?(array, 0, 1, 2) || line?(array, 3, 4, 5) || line?(array, 6, 7, 8) || line?(array, 0, 3, 6) || line?(array, 1, 4, 7) || line?(array, 2, 5, 8) || line?(array, 0, 4, 8) || line?(array, 2, 4, 6)
  		return true
  	else
  		return false
  	end
  end

  def board_full?(array)
  	if array.join !=~ /\d/
  		return true
  	else
  		return false
  	end
  end

  def continue?(array)
  	if board_full?(array) || one_line?(array)
  		return false
  	else
  		return true
  	end
  end


end
