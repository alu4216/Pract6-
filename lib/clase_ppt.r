
class Ppt
  attr_accessor  :jugada_j, :jugada_m, :tiradas, :defeat, :obtener_humano
  attr_reader :jugada_j, :jugada_m, :tiradas, :defeat

   def initialize
	@jugada_j= :piedra
	@jugada_m= :tijera  
   end 
   def obtener_humano
	@jugada_j=piedra
   end	

end
