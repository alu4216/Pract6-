require "~/LPP/Pract6/lib/clase_ppt" 

describe Ppt do
  before :each do
	  @mano = Ppt.new
  end
  it "Deberia tener un estado inicial el jugador" do
	@mano.jugada_j.should == :piedra   
  end 

end







