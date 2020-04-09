require 'spec_helper'
require './app/services/solar_system_service.rb'

RSpec.describe "SolarSystemApi" do
  it "can get solar system bodies", :vcr do
    objects = SolarSystem.new
    expect(objects.get_bodies.class).to eq(Array)
  end
end
