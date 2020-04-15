# This is essentially the Routes File!
class StellarBeAPP < Sinatra::Base

  before do
    content_type :json
  end

  get '/search' do
    response = SolarSystemService.get_response(params[:query].capitalize)
    json(response)
  end

  get '/people-in-space' do
    response = SpacePeopleService.get_data
    json(response)
  end

  get '/astronomy' do
    response = MoonSunService.get_response(params[:query])
    json(response)
  end

  get '/iotd' do
    response = ImageOfTheDayService.get_image
    json(response)
  end
end
