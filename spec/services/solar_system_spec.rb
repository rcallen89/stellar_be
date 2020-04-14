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
  
  it "can list all bodies", :vcr do
    response = Faraday.get("https://api.le-systeme-solaire.net/rest/bodies")
    bodies = JSON.parse(response.body, symbolize_names: true)
    
    list = bodies[:bodies].map do |body|
      name = body[:englishName]
      {name => body[:isPlanet]}
    end
    
    planets = list.map do |body|
      if body.values.first == true
        body.keys.first
      end
    end.compact
    
    binding.pry
  end
end
