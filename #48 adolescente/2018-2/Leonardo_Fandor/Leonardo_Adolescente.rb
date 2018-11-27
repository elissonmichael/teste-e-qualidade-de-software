class Adolescente

  def responder(resposta)
    if resposta == nil || resposta == ''
      return "Ok, que seja!"
    elsif resposta == resposta.upcase
      return "Ei, relaxa aí!"
    elsif resposta.split(//).last == '?'
      return "Certo."
    else
      return "Tanto faz."

  end


end



end
