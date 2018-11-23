class Adolescente

  def responder(str)

    if str == nil || str.empty?
			return "Ok, que seja!"
		end
    if str.eql?(str.upcase)
      return 'Ei, relaxa aí!'
    end
    if str.split('').last.eql?('?')
      return 'Certo.'
    end

    return 'Tanto faz.'

  end

end
