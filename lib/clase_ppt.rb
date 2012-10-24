
class Ppt
  attr_accessor  :jugada_j, :jugada_m, :tiradas, :defeat
  attr_reader :jugada_j, :jugada_m, :tiradas, :defeat, :gandores

   def initialize
	@tiradas = [ :piedra, :papel, :tijeras]
	@defeat = { :piedra => :tijeras, :papel => :piedra, :tijeras => :papel}
	@jugada_j= :piedra 
	@jugada_m= :tijeras
	@resultados=[]
	@resultado
   end 
   def obtener_humano
	@jugada_j= @tiradas.sample 
   end	
   def obtener_maquina
	@jugada_m=@tiradas.sample	
   end 
   def jugar

  #  puts "Jugada del humano: #{@jugada_j}"
 #   puts "Jugada del PC: #{@jugada_m}"

    if (@defeat[@jugada_m] == @jugada_j)
      final = "Pierde"
      @resultado="ganas"
      @resultados <<'ganas'
    elsif (@jugada_m == @jugada_j)
      final = "Empata"
      @resultado="empata"
      @resultados<<'empata'
    else
      final = "Gana"
      @resultado="pierde"
      @resultados <<'pierde'
   end
#	puts "El jugador -> #{final}"
end
end 
