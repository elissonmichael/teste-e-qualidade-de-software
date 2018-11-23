class Adolescente

  def responder(o_que_responder)
    return 'Ok, que seja!' if o_que_responder.nil? || o_que_responder.empty?
    return 'Ei, relaxa aí!' if o_que_responder.eql?(o_que_responder.upcase)
    return 'Certo.' if o_que_responder.split(//).last.eql?('?')
    return 'Tanto faz.' if o_que_responder.split(//).last.eql?('!')
    return 'Tanto faz.'
  end
end
