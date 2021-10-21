
require 'bundler'
Bundler.require
require 'pry'


require_relative 'lib/Player'
require_relative 'lib/board'

class Game

  attr_accessor :board, :player1, :player2  

   def initialize

    @board = Board.new
    @Players_array = Array.new
     
   end

  
  def ask_name_of_user

    system "clear"
    puts " 

    "
    puts " "
    puts "..............................|   ========     ====    ===    ========   =     ,====     =======    ==    =====  | ....................."
    puts "............................. |      ||         ||    |          ||     / *   |            ||      *  *  ||__    | ....................."
    puts "..............................|      ||         ||    |          ||    /---*  |            ||     *    * ||__]   | ....................."
    puts "............................. |      ||        _||_    ===   o   ||   /     *  *===  o     ||      *__*  ||____  | ....................."
    puts "..............................|      --       ------   ---       ||  /       *  ---        --       --     ----  | ....................."
    puts " "
    puts " _ _ _ _ _ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _  _HEYYY ! Bienvenue dans ce jeu TIC TAC TOE_ _ _ _  _ _ _ _ _ _ _ _ __ _ _ _ _ _ _ __ "
    puts " "
    puts " "

    puts "Joueur 1, ton symbole sera X, choisis ID :"
    print ">"

    user_name = gets.chomp


    @player1 = Player.new(user_name, "X")
    @Players_array << @player1

    puts 
    puts "A toi joueur 2, ton symbole sera le O, choisis ton ID:"
    print ">"

    user_name = gets.chomp


    @player2 = Player.new(user_name, "O")
    @Players_array << @player2

  end



  def start

    while @board.win == false
      self.turn
    end

  end

  def turn

    loop do

      puts " "
      puts " --------------------------------------------------------------- "
      puts "C'est le tour de #{@player1.user_name} avec le symbole suivant : #{@player1.marker}"
      puts "A toi de jouer ! choisi une case"
      print ">"

      @board.play_turn(@player1.marker)
      @board.display_board

      puts " "
      puts " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ "
      puts "C'est le tour de #{@player2.user_name} avec le symbole suivant : #{@player2.marker}"
      puts "A toi de jouer #{@player2.user_name} ! choisi une case"

      @board.play_turn(@player2.marker)

      @board.display_board

      if @board.win == true

        puts " ===================================== "
        puts " BRAVOO !! Tu as gagné "
        puts " "

        @board.display_board

        break

      end

    end
  end 

  def new_game?

    puts " "
    puts " ----------------------------------------- "

    puts "Play again ? Yes/No "
    print ">"

    answer = gets.chomp.to_s

    if answer == "Yes"

      system "clear"

      @board = Board.new
      @board.display_board

      self.start

    else answer == "No"

      puts "Merci d'avoir joué !"

    end
    
  end

  def perform

    ask_name_of_user

    @board.display_board

    start 

    new_game?
    
  end



end

Game.new.perform






