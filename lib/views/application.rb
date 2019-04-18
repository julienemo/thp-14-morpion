require 'bundler'
Bundler.require

require_relative '../app/player'
require_relative '../app/board'
require_relative '../app/boardcase'
require_relative '../app/game'
require_relative 'show'


class Application
  attr_reader :game

  def initialize
    welcome
    @game = Game.new
    @game.game_on
    puts "notes Julie : et on va demande au jouer si une autre partie"
    end_prog
  end

  private
  def welcome
    puts "   "+"-" * 33
    puts "   |  Welcome to the MORPION game  |"
    puts "   |                               |"
    puts "   |     Proudly presented by      |"
    puts "   |                               |"
    puts "   |    Dhyia, Julie and Romain    |"
    puts "   "+"-" * 33
  end

  def end_prog
    print "> "
    choice = gets.chomp.downcase
    puts choice
    case choice
    when ( "q" ||  "quit")
      puts "You're right, it's time. Seeya soon though !"
      exit
    when ( "c" ||  "continue")
      puts "Of course, anytime."
      puts "notes Julie : Mets une autre partie en boucle"
    else
      puts "Come again ? Didn't get that..."
      puts "<Q> to quit or <C> to continue"
      puts "notes Julie :Je gere pas ce genre de boucle au secours"
    end
  end
end

Application.new
