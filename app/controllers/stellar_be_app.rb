# This is essentially the Routes File!

class StellarBeAPP < Sinatra::Base

  before do
    content_type :json
  end

  get '/search' do
    service = SSApiService.new
    response = service.api_response(params[:query])
    json(response)
  end
end