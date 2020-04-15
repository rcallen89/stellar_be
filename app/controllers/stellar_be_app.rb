# This is essentially the Routes File!
require_relative '../serializers/space_people_serializer.rb'
require_relative '../serializers/solar_system_serializer.rb'
require_relative '../serializers/moon_sun_serializer.rb'
require_relative '../serializers/image_of_the_day_serializer.rb'

class StellarBeAPP < Sinatra::Base

  before do
    content_type :json
  end

  get '/search' do
    response = SolarSystemService.get_response(params[:query].capitalize)
    SolarSystemSerializer.data(response)
  end

  get '/people-in-space' do
    response = SpacePeopleService.get_data
    SpacePeopleSerializer.data(response)
  end

  get '/astronomy' do
    response = MoonSunService.get_response(params[:query])
    MoonSunSerializer.data(response)
  end

  get '/iotd' do
    response = ImageOfTheDayService.get_image
    ImageOfTheDaySerializer.data(response)
  end
end
