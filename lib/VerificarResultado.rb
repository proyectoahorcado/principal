class VerificarResultado

	ANIMALES=["LLAMA","ELEFANTE","COCODRILO"]
	PAISES=["ARGENTINA","ALEMANIA","NIGERIA"]
	PLATOS=["PASTA","SANCOCHO","EMPAREDADO"]

	def leer letra
		return letra.upcase
	end

	def existeEnPalabra letra
		retorno=false
		PAISES[0].each_char do |l|
			if l==letra
				retorno=true
			end
		end
		return retorno
	end

	def verificar letra
		lista=[false,false,false,false,false,false,false,false,false]
		it=0

		PAISES[0].each_char do |l|
			if l==letra
				lista[it]=true
			end
			it=it+1
		end

		return lista
	end

end