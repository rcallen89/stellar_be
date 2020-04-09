require 'spec_helper'
require './app/services/moon_sun_service.rb'

RSpec.describe "Moon Sun Api", type: :request do
  it "can get a successful response from the api", :vcr do
    service = MoonSunService.new
    response = service.get_response("Colorado")

    expect(response.class).to eq(Hash)
    expect(response.has_key?(:sunrise)).to eq(true)
    expect(response.has_key?(:sunset)).to eq(true)
    expect(response.has_key?(:moonrise)).to eq(true)
    expect(response.has_key?(:moonset)).to eq(true)
    expect(response.has_key?(:moon_phase)).to eq(true)
    expect(response.has_key?(:moon_illumination)).to eq(true)
  end
end
