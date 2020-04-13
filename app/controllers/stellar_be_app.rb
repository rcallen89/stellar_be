# This is essentially the Routes File!
class StellarBeAPP < Sinatra::Base

  before do
    content_type :json
  end

  get '/search' do
    service = SolarSystemService.new
    response = service.get_response(params[:query])
    json(response)
  end

  get '/people-in-space' do
    service = SpacePeopleService.new
    response = service.get_data
    json(response)
  end

  get '/astronomy' do
    service = MoonSunService.new
    response = service.get_response(params[:query])
    json(response)
  end

  get '/iotd' do
    service = ImageOfTheDayService.new
    response = service.get_image
    json(response)
  end
end
