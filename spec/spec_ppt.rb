require "~/LPP/Pract6/lib/clase_ppt" 

describe Ppt do
	
  before :each do 

	  @mano = Ppt.new()
  end
  it "Deberia tener un estado inicial el jugador" do
	@mano.jugada_j.should == :piedra   
  end 
  it "Deberia tener un estado inicial la maquina" do
	@mano.jugada_m.should== :tijeras
  end
  it "Deberia tener una lista de posibles jugadas" do 
	@mano.tiradas.should == [ :piedra, :papel, :tijeras]
  end 
  it "Deberia tener una lista de jugadas con sus ganadores" do
 	@mano.defeat.should ==  { :piedra => :tijeras, :papel => :piedra, :tijeras => :papel}
  end
  it "Funcion obtener jugada humano" do
	var=@mano.obtener_humano 
 	@mano.tiradas.include?var
  end
  it "Funcion obtener jugada maquina" do
	var=@mano.obtener_maquina 
	@mano.tiradas.include?var
  end   
  it "Debe existir una variables que liste los resultados de la maquina " do

	defined?@mano.resultados
  end
  it "Debe existir una variable que muestre el ultimo resultado de la maquina" do
	defined?@mano.resultado
  end
  it "Invocar metodo jugar" do
    @mano.jugar
  end 

end







