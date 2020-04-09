require 'spec_helper'

RSpec.describe 'Solar System API', type: :request do

  def app
    StellarBeAPP
  end

  it 'can get a response from an api and send as JSON data', :vcr do
    search_term = 'jupiter'
    get "/search?query=#{search_term}"

    expect(last_response.body.class).to eq(String)
  end
end
