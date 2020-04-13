require 'spec_helper'

RSpec.describe 'IOD NASA API', type: :request do

  def app
    StellarBeAPP
  end

  it 'can get a response from an api and send as JSON data', :vcr do
    get "/iotd"

    expect(last_response.body.class).to eq(String)
  end
end
