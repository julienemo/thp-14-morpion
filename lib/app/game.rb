require 'bundler'
Bundler.require

require_relative 'player'
require_relative 'board'
require_relative 'boardcase'
require_relative '../views/show'
require_relative '../views/application'

class Game
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
  attr_accessor :current_player, :status, :board, :players_array

  def initialize
    sign_array = ['O','X']
    players_array = []
    sign_array.each_with_index do |sign, index|
      puts "Player #{index+1} : quel est ton prénom ?"
      players_array << Player.new(sign)
    end
    board = Board.new
    show = Show.new
    status = "on going"
    @current_player = players_array[0]
  end

  def turn
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
    while board.continue? == true
      board.play_turn
    else
      game_end
    end
  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
  end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
    # END SCREEN
  end


   #end


end

game = Game.new