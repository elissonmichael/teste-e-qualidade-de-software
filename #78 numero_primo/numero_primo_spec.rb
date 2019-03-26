require 'minitest/autorun'
#require_relative 'aaaa-s/seu_nome'

describe Integer do
  describe '#primo?' do
    it 'retorna true quando um número é primo' do
       2.must_be :primo?
       3.must_be :primo?
       5.must_be :primo?
       7.must_be :primo?
      11.must_be :primo?
    end

    it 'retorna false quando um número NÃO é primo' do
      -1.wont_be :primo?
       0.wont_be :primo?
       1.wont_be :primo?
       4.wont_be :primo?
       6.wont_be :primo?
       8.wont_be :primo?
       9.wont_be :primo?
      10.wont_be :primo?
    end
  end
end
