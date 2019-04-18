require 'bundler'
Bundler.require

require_relative 'player'
require_relative 'board'
require_relative 'boardcase'
require_relative '../views/show'


class Game
  # our definition of one game
  # is what happens before there is a winner
  # or the board is full
  # in one game we need to know
  # who plays and
  # what the board views are
  # which brings us to the two attibutes
  # that we can't change publicly
  attr_reader :players_array, :show

  def initialize
    sign_array = ['O','X']
    @players_array = []
    sign_array.each_with_index do |sign, index|
      puts "Player #{index+1}, please choose a lucky name:"
      @players_array << Player.new(sign)
      puts ""
    end
    @show = Show.new
  end

  def game_on
    puts "-" * 33
    puts ""
    puts "*** GAME STARTS HERE, GET READY!***  "
    puts ""
    puts "-" * 33
    while game_status == 3
      (0..1).each do |i|
        player = @players_array[i]
        one_turn(player, i)
        if game_status == 1
          puts "-"*38
          puts ""
          puts "     #{player.name} with #{player.sign} won !! Congrats !"
          puts ""
          puts "-"*38
          break
        elsif game_status == 2
          puts "-"*38
          puts ""
          puts "Oups, tie......"
          puts ""
          puts "-"*38
          break
        end
      end
    end
  end

  private

  def one_turn(player, index)
    puts "Press 'Enter' to continue"
    gets.chomp
    puts " "
    puts "#{player.name}, choose from the following numbers"
    puts "to replace it with your #{player.sign} !"
    puts " !! Don't enter anything other than the numbers shown in the following view"
    puts " !! Otherwise you get kicked out and we sware we tried to prevent this case"
    puts " !! We admit sadly than we don't know how to make an infinite loop ><"
    puts ""
    @show.show_menu
    puts ""
    print "> Your choice here: "
    answer = gets.chomp.to_i
    puts " "
    @show.board.case_array[answer].active(player.sign)
    puts "You've made your move ! Here's your new board: "
    show.show_status
    puts ""
  end



  private

  def game_status
    contents = []
    @show.board.case_array.each do |x|
      contents << x.content
    end
    if one_line?(contents)
      puts "     We have a winner !!"
      return 1
    elsif board_full?(contents)
      puts "    Oups, tie...."
      return 2
    else
      return 3
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

#game = Game.new
#game.game_on
