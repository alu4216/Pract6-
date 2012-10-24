
class Ppt
  attr_accessor  :jugada_j, :jugada_m, :tiradas, :defeat
  attr_reader :jugada_j, :jugada_m, :tiradas, :defeat

   def initialize
	@tiradas = [ :piedra, :papel, :tijeras]
	@defeat = { :piedra => :tijeras, :papel => :piedra, :tijeras => :papel}
	@jugada_j= :piedra 
	@jugada_m= :tijeras
   end 
   def obtener_humano
	@jugada_j= @tiradas.sample 
   end	
   def obtener_maquina
	@jugada_m=@tiradas.sample	
   end 

end
