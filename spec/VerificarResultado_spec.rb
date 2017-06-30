require './lib/VerificarResultado'

describe VerificarResultado do
	
	it "se recibe una letra que si existe" do

		resultado=VerificarResultado.new
		letra = resultado.leer("L")
		expect(letra).to eq "L"
	end

	it "se verifica si la letra esta en la palabra" do

		resultado=VerificarResultado.new
		letra = resultado.leer("L")
		existe = resultado.existeEnPalabra(letra)
		expect(existe).to eq true
	end

	it "se verifica cuantas coincidencias existen en la palabra" do

		resultado=VerificarResultado.new
		letra = resultado.leer("L")
		lista = resultado.verificar(letra)
		expect(lista).not_to be_empty
	end

	

end
