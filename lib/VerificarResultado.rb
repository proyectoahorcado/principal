class VerificarResultado

	PALABRA="LLAMA"

	def leer letra
		return letra.upcase
	end

	def existeEnPalabra letra
		PALABRA.each_char do |l|
			if l==letra
				return true
			else
				return false
			end
		end
	end

	def verificar letra
		lista=[false,false,false,false,false]
		it=0

		PALABRA.each_char do |l|
			if l==letra
				lista[it]=true
			end
			it=it+1
		end

		return lista
	end

end