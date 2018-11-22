class Adolescente

  def responder(answer)
    return 'Ok, que seja!' if answer.nil? || answer.empty?
    return 'Ei, relaxa aí!' if answer.eql?(answer.upcase)
    return 'Certo.' if answer.split(//).last.eql?('?')
    return 'Tanto faz.' if answer.split(//).last.eql?('!')
    return 'Tanto faz.'
  end
  
end
