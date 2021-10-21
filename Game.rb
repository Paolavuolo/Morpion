
require 'bundler'
Bundler.require
require 'pry'


require_relative 'lib/Player'
require_relative 'lib/board'

class Game

  attr_accessor :board, :current_player1, :current_player2 

  def initialize

    system "clear"
    puts "HEYYY ! Bienvenue dans ce jeu TIC TAC TOE"

    puts "Joueur 1, ton symbole sera X, choisis ID :"
    print ">"
    id_1 = gets.chomp

    player1 = Player.new(id_1, "X")

    puts 
    puts "A toi joueur 2, ton symbole sera le O, choisis ton ID:"
    id_2 = gets.chomp

    player2 = Player.new(id_2, "O")

    @@player_array = Array.new 

    @@player_array << player1 << player2

    @current_player1 = player1
    @current_player2 = player2

    @board = Board.new

  end


  def start

    while @board.victory? == false
      self.turn 
    end 
  end

  def turn 

    loop do 

      system "clear"

      @board.display_board

      puts ""
      puts "C'est le tour de #{@current_player1.player} avec le symbole suivant : #{@current_player1.marker}"
      puts "A toi de jouer ! choisi une case"
      print ">"

      @board.play_turn(@current_player1.marker)

      puts "C'est le tour de #{@current_player2.player} avec le symbole suivant : #{@current_player2.marker}"
      puts "A toi de jouer ! choisi une case"
      print ">"

      @board.play_turn(current_player2.marker)

      if @board.victory? == true 

        system "clear"
        puts "=============="
        puts "Voici l'état du jeu :"

        @board.display_board

        puts " "
        puts "#{@current_player1.player} a gagné"
        puts 
        break
      end
    end
  end 



end

game = Game.new
game.start


