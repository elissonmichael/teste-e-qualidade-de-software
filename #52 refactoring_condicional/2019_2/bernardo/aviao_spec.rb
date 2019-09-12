require relative 'aviao_bernardo'

describe Aviao do

  context 'Polimorfismo para altitude de cruzeiro' do

    it 'Altitude Concorde' do
      concorde = Concorde.new('Concorde')
      expect(concorde.altitude_de_cruzeiro).to equal(750)
    end

    it 'Altitude Airbus' do
      airbus = Airbus.new('Airbus')
      expect(airbus.altitude_de_cruzeiro).to equal(1000)
    end

    it 'Altitude Boeing' do
      boeing = Boeing.new('Boeing')
      expect(boing.altitude_de_cruzeiro).to equal(500)
    end

  end

end
