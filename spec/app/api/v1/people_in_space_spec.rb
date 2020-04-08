require 'spec_helper'

describe "PeopleInSpaceApi" do
  def app
    StellarBeAPP
  end

  it "can get number of people currently in space" do
    # 'http://api.open-notify.org/astros.json'
    get '/api/v1/humans'

    expect(last_response).to be_successful

    testy = JSON.parse(last_response.body, symbolize_names: true)

  end
end
