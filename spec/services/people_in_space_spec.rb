require 'spec_helper'
require './app/services/space_people_service.rb'

RSpec.describe "People In Space Api" do
  it "can get successful response from API", :vcr do
    service = SpacePeopleService.new
    response = service.get_data

    expect(response.class).to eq(Array)
    expect(response.first.class).to eq(Hash)
  end
end
