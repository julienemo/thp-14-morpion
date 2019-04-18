require 'bundler'
Bundler.require

require_relative "player"

class Board
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué


  def initialize
    case_array = []
    (0..8).each do |i|
      case_array[i] = BoardCase.new(i)
    end

    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
  end

  def play_turn
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
  end

  def victory?
  	win_combinations = [
  		[0,1,2], # Top row
  		[3,4,5], # Middle row
  		[6,7,8],
  		[0,3,6],
  		[1,4,7],
  		[2,5,8],
  		[0,4,8],
  		[2,4,6]]
#TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
  end
end
