require "pry"

class Player

  attr_reader :player , :marker

  #création des joueurs 

  def initialize (player_name, marker)

    @player = player_name
    @marker = marker

    puts "Salut #{player_name} ! ton symbole est le #{marker}"

  end

end