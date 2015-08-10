class Parcels
  define_method(:initialize) do |length, width, height, weight, shipping_class|
    @length = length
    @width = width
    @height = height
    @weight = weight
    @shipping_class = shipping_class #clases: 1,2,3
  end

  define_method(:volume) do
    return @length * @width * @height
  end

  define_method(:shipping_cost) do
    cost_calculator = 0
    if (self.volume() > @weight)
      cost_calculator = self.volume*@shipping_class
    else
      cost_calculator = @weight*@shipping_class
    end
    return cost_calculator
  end
end
