require('sinatra')
require('sinatra/reloader')
require('./lib/parcels')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/parcel_results') do
  @height = params.fetch('height').to_i
  @width = params.fetch('width').to_i
  @length = params.fetch('length').to_i
  @weight = params.fetch('weight').to_i
  @shipping_class = params.fetch('shipping_class').to_i
  the_parcel = Parcels.new(@length, @width, @height, @weight, @shipping_class)
  @total = the_parcel.shipping_cost()
  @parcel_volume = the_parcel.volume()
  erb(:parcel_results)
end
