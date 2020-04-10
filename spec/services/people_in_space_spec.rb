require 'spec_helper'
require './app/services/space_people_service.rb'

RSpec.describe "People In Space Api" do
  it "can get successful response from API", :vcr do
    service = SpacePeopleService.new
    response = service.get_data

    expect(response.class).to eq(Array)
    expect(response.first.class).to eq(Hash)
  end

  it "can successfully get space crafts in space", :vcr do
    service = SpacePeopleService.new
    response = service.get_space_crafts

    expect(response.class).to eq(Array)
    expect(response.first.class).to eq(String)
  end

  it "can successfully get names of people in space", :vcr do
    service = SpacePeopleService.new
    response = service.get_names

    expect(response.class).to eq(Array)
    expect(response.first.class).to eq(String)
  end
end
