require "pry"

class Board
  
  attr_accessor :board, :count_turn_array, :user_input

  #création du tableau 

  def initialize 

  	@board = [" "," "," "," "," "," "," "," "," "]

  end

  def display_board

  	puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
  	puts " ------------------------ "
  	puts " #{@board[3]} | #{@board[4]} | #{@board[5]}"
  	puts " ------------------------ "
  	puts "#{@board[6]} | #{@board[7]} | #{@board[8]} "

  end

    #remplacer la case par le symbole du joueur 

  def play_turn(marker)

    reponse = false 

  	while reponse == false 

     puts "Ou veux tu jouer  ?"

     @user_input = gets.chomp.to_i-1

      e = @user_input
    
     if @board[e] == " "

      reponse = true

      board[e] = marker

      #return user_input

     else

     puts "OUPS ! cette case est déjà prise"  

     end 
   end
  end

   
  def victory? 

    #on va tester les différentes cases et voir si elles sont identique !! 

    if (@board[0] != ' ' && @board[0] == @board[1] && @board[0] == @board[2]) || (@board[0] != ' ' && @board[3] == @board[4] && @board[3] == @board[5]) || (@board[0] != ' ' && @board[6] == @board[7] && @board[6] == @board[8] ) || (@board[0] != ' ' && @board[0] == @board[3] && @board[0] == @board[6]) || (@board[0] != ' ' && @board[1] == @board[4] && @board[1] == @board[7]) || (@board[0] != ' ' && @board[2] == @board[5] && @board[2] == @board[8]) ||( @board[0] != ' ' && @board[0] == @board[4] && @board[0] == @board[8]) || (@board[0] != ' ' && @board[2] == @board[4] && @board[2] == @board[6])

      return true 

     else 

      return false

    end

  end

end
