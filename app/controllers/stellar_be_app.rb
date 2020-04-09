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

  get '/people_in_space' do
    service = SpacePeopleService.new
    response = service.get_data(params[:query])
    json(response)
  end
end
