require 'spec_helper'
require './app/services/solar_system_service.rb'

RSpec.describe "SolarSystemApi" do
  it "can get solar system bodies", :vcr do
    objects = SolarSystem.new
    expect(objects.get_bodies.class).to eq(Array)
  end
  
  it "can get single body", :vcr do
    object = SolarSystem.new
    expect(object.get_single_body("jupiter").class).to eq(Hash)
  end
end
