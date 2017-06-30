require './lib/Escenario.rb'

describe Escenario do
    it "recibe palabra y entrega underscores" do
    	#arrange
		longitud = Escenario.new
		#act
		result = longitud.imprimir "Argentina"
		#assert
		expect(result).to eq "_ _ _ _ _ _ _ _ _" 
    end
end