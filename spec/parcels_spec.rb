require('rspec')
require('parcels')

describe('Parcels') do
  describe('#volume') do

    it('calculate volume based on dimensional input') do
      the_package = Parcels.new(2, 3, 4, 22, 1)
      expect(the_package.volume()).to(eq(24))
    end

  end

  describe('#shipping_cost') do

    it('calculates shipping cost') do
      the_package = Parcels.new(2,3,4,22, 2)
      expect(the_package.shipping_cost()).to(eq(48))
    end

    it('calculates shipping cost for a heavier package') do
      the_package = Parcels.new(2,3,4,88, 3)
      expect(the_package.shipping_cost()).to(eq(264))
    end

  end

end
