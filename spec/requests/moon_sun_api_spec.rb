require 'spec_helper'

RSpec.describe 'Moon and Sun API', type: :request do

  def app
    StellarBeAPP
  end

  it 'can get a response from an api and send as JSON data', :vcr do
    search_term = 'colorado'
    get "/astronomy?query=#{search_term}"

    expect(last_response.body.class).to eq(String)
  end
end
