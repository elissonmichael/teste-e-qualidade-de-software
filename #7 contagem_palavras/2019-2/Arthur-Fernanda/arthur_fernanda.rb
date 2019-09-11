# frozen_string_literal: true

# :nodoc:
class Frase
  def initialize(palavras)
    @palavras = palavras
  end

  def conte_palavras
    array = @palavras.downcase.gsub(',', ' ').split.map! do |x|
      x.gsub(/\W/, '')
    end
    hash = array.uniq.map { |x| [x, array.count(x)] }.to_h
    hash
  end
end
