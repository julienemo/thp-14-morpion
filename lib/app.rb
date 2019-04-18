class App
  def initialize
    welcome
    puts "notes Julie : ici il y aura le jeu"
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

App.new
