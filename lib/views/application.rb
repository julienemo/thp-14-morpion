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
    choice = "c"
    # this is a while true loop
    # so that we can prope infinite rounds of game
    # (each time the game ends when there is winner
    # or the board is full without winner
    # we'll ask whether you want to play again)
    while choice == "c" || choice == "C"
      welcome # private
      @game = Game.new
      @game.game_on
      new_round # private
      end_prog # private
    end
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

  def new_round

    puts "-" * 38
    puts "     Well, well, well...."
    puts "     All good things come to an end ><"
    puts ""
    puts "     Play again?"
    puts "     Press <Q> to quit or <C> to continue"
  end


  def end_prog
    # also a "while true" loop (du moins c'est ce qu'on essaie..)
    choice = "a"
    until (choice == "c" || choice == "C"|| choice == "Q"|| choice == "q")
      print "> "
      choice = gets.chomp.downcase
      if (choice == "q" || choice == "quit")
        puts "     You're right, it's time. Seeya soon though !"
        exit
      elsif
        (choice == "c" || choice == "continue")
        puts "     Of course, anytime."
        puts ""
        break
      else
        puts "     Come again ? Didn't get that..."
        puts ""
        puts "     <Q> to quit or <C> to continue"
        print "> "
        choice = gets.chomp.downcase
      end
    end
  end
end


Application.new
