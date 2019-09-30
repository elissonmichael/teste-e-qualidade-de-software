
class Adolescente
    def responder(fala)
      return 'Ok, que seja!' if fala.nil? || fala.empty?
      return 'Ei, relaxa aí!' if fala.eql?(fala.upcase)
      return 'Certo.' if fala.split(//).last.eql?('?')
      return 'Tanto faz.'
    end
  end
