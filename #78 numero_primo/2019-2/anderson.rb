module NumeroPrimo
	refine Integer do
		def primo?
			cont = 0
			1.step self do |numeros|
				if self % numeros == 0
					cont += 1
				end
			end
			true if cont == 2 	
		end
	end
end

class Integer
	using NumeroPrimo
	def primo?
		self.primo?
	end
end