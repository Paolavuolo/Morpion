require "pry"

class Board
  
  attr_accessor :board, :count_turn_array, :user_input



  def initialize 

  	@board = [" "," "," "," "," "," "," "," "," "]

  end

  def display_board

  	puts "  | #{@board[0]}   A1| #{@board[1]}   A2| #{@board[2]}   A3| "
  	puts "  ------------------------ "
  	puts "  | #{@board[3]}   B4| #{@board[4]}   B5| #{@board[5]}   B6| "
  	puts "  ------------------------ "
  	puts "  | #{@board[6]}   C7| #{@board[7]}   C8| #{@board[8]}   C9| "

  end

 

  def play_turn(marker)

    reponse = false 

  	while reponse == false 

     puts "Ou veux tu jouer  ?"

     @user_input = gets.chomp.to_i-1

      e = @user_input
    
     if @board[e] == " "

      reponse = true

      board[e] = marker

     else

     puts "OUPS ! cette case est déjà prise"  

     end 

   end

  end

   
  def win 



    if (@board[0] != ' ' && @board[0] == @board[1] && @board[0] == @board[2]) || (@board[3] != ' ' && @board[3] == @board[4] && @board[3] == @board[5]) || (@board[6] != ' ' && @board[6] == @board[7] && @board[6] == @board[8] ) || (@board[0] != ' ' && @board[0] == @board[3] && @board[0] == @board[6]) || (@board[1] != ' ' && @board[1] == @board[4] && @board[1] == @board[7]) || (@board[2] != ' ' && @board[2] == @board[5] && @board[2] == @board[8]) ||( @board[0] != ' ' && @board[0] == @board[4] && @board[0] == @board[8]) || (@board[2] != ' ' && @board[2] == @board[4] && @board[2] == @board[6])

      return true 

     else 

      return false

    end

  end

end
