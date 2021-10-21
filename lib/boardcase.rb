require 'pry'

class BoardCase

	attr_accessor :Case, :string_value,
  
 #définition de la case
  
  def initialize (position_case)

  	@string_value = " "
  	@case = position_case

  end

  def to_s 

  	self.case = @case      

  end
end