require "pry"

class Player

  attr_reader :player , :marker, :user_name

  #création des joueurs 

  def initialize (user_name, marker)

    @user_name = user_name 
    @marker = marker

    puts "Salut #{@user_name} ! ton symbole est le #{@marker}"

  end

end