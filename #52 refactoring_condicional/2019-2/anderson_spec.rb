require 'anderson'

describe Aviao do
  context 'Polimorfismo para altitude de cruzeiro' do
    it 'Retorna altitude de Concorde' do
      concorde = Concorde.new('Concorde')
      expect(concorde.altitude_de_cruzeiro).to eq(750)
    end

    it 'Retorna altitude de Airbus' do
      airbus = Airbus.new('Airbus')
      expect(airbus.altitude_de_cruzeiro).to eq(1000)
    end

    it 'Retorna altitude de Boeing' do
      boing = Boeing.new('Boeing')
      expect(boing.altitude_de_cruzeiro).to eq(500)
    end
  end
end

