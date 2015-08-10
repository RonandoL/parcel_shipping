require('rspec')
require('parcels')

describe('Parcels') do
  describe('#volume') do

    it('calculate volume based on dimensional input') do
      the_package = Parcels.new(2, 3, 4, 22)
      expect(the_package.volume()).to(eq(24))
    end

  end

  describe('#shipping_cost') do
    
  end

end
