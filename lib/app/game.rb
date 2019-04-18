require 'bundler'
Bundler.require

require_relative 'player'
require_relative 'board'
require_relative 'boardcase'
require_relative '../views/show'
require_relative '../views/application'

class Game
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
  attr_accessor :current_player, :status, :board, :players_array, :show

  def initialize
    sign_array = ['O','X']
    @players_array = []
    sign_array.each_with_index do |sign, index|
      puts "Player #{index+1} : quel est ton prénom ?"
      @players_array << Player.new(sign)
    end
    @show = Show.new
    #@board = Board.new
    status = "on going"
    @current_player = @players_array[0]
  end

  def turn
    puts "-" * 33
    puts ""
    puts "GAME STARTS HERE, GET READY!"
    puts "-" * 33
    while continue? == true
      (0..1).each do |i|
        play_turn(@players_array[i], i)
        if !continue? == true
         break
        end
      end
    end
    puts "la partie est terminée"
  end

  def switch_player
    if current_player = @players_array[0]
      current_player = @players_array[1]
    else
      current_player = @players_array[0]
    end
  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
  end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
    # END SCREEN
  end

  def play_turn(player, index)
    puts "Press 'Enter' to continue"
    gets.chomp
    puts " "
    puts "#{player.name}, choose from the following numbers"
    puts "to replace it with your #{player.sign} !"
    @show.show_menu
    print "> Your choice here: "
    answer = gets.chomp.to_i
    puts " "
    @show.board.case_array[answer].active(player.sign)
    puts "here's the game's status: "
    show.show_status

  end
  
  

  private

  def continue?
    contents = []
    @show.board.case_array.each do |x|
      contents << x.content
    end
    if one_line?(contents)
      puts "victory!"
      return false
    elsif board_full?(contents)
      puts "Tie!"
      return false
    else
      return true
    end   
  end

  def line?(array, a, b, c)
  	if (array[a] == array[b]) && (array[a] == array[c]) && array[a].class == String
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
  	if array.join =~ /[0-9]/
  		return false
  	else
  		return true
  	end
  end


end

game = Game.new
game.turn