require 'spec_helper'
require './app/services/solar_system_service.rb'

RSpec.describe "Solar System Api", type: :request do
  it "can get response with a single body", :vcr do
    service = SolarSystemService.new
    response = service.get_response("mars")

    expect(response.class).to eq(Hash)
    expect(response[:name]).to eq("Mars")
    expect(response.has_key?(:id)).to eq(true)
    expect(response.has_key?(:isPlanet)).to eq(true)
    expect(response.has_key?(:moons)).to eq(true)
  end
  
  it "can get a generic search for a single body", :vcr do
    service = SolarSystemService.new
    response = service.get_response("kale")

    expect(response.class).to eq(Hash)
    expect(response[:name]).to eq("Calé")
    expect(response.has_key?(:id)).to eq(true)
    expect(response.has_key?(:isPlanet)).to eq(true)
    expect(response.has_key?(:moons)).to eq(true)
  end
end
