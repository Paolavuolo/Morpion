
require 'bundler'
Bundler.require
require 'pry'


require_relative 'lib/Player'
require_relative 'lib/board'

class Game

  attr_accessor :board, :player1, :player2  

   def initialize

    @board = Board.new
     
   end

  
  def ask_name_of_user

    system "clear"
    puts "HEYYY ! Bienvenue dans ce jeu TIC TAC TOE"

    puts "Joueur 1, ton symbole sera X, choisis ID :"
    print ">"

    user_name = gets.chomp


    @player1 = Player.new(user_name, "X")

    puts 
    puts "A toi joueur 2, ton symbole sera le O, choisis ton ID:"
    print ">"

    user_name = gets.chomp


    @player2 = Player.new(user_name, "O")

  end



  def start

    while @board.win == false
      self.turn
    end

  end

  def turn

    loop do 


      

      puts ""
      puts "C'est le tour de #{@player1.user_name} avec le symbole suivant : #{@player1.marker}"
      puts "A toi de jouer ! choisi une case"
      print ">"

      @board.play_turn(@player1.marker)
      @board.display_board

      puts " "
      puts "C'est le tour de #{@player2.user_name} avec le symbole suivant : #{@player2.marker}"
      puts "A toi de jouer #{@player2.user_name} ! choisi une case"

      @board.play_turn(@player2.marker)

      @board.display_board

      if @board.win == true 

        puts " Tu as gagné "

        @board.display_board

        break

      end

    end
  end 

  def new_game?

    puts "Play again ?"
    print ">"

    answer = gets.chomp.to_s

    if answer == "Yes"

      @board = Board.new

      self.start
    end
    
  end

  def perform

    ask_name_of_user

    #puts "le nom du joueur 1 est #{@players1.user_name} et son symbole est #{@players1.marker}"
    #puts "le nom du joueur 2 est #{@players2.user_name} et son symbole est #{@players2.marker}"

    @board.display_board

    start 

    new_game?
    
  end



end

Game.new.perform






