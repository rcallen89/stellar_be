require 'spec_helper'
require './app/services/space_people_service.rb'

RSpec.describe "PeopleInSpaceApi" do
  it "can get number of people currently in space", :vcr do
    objects = SpacePeople.new
    expect(objects.get_data.class).to eq(Array)
    expect(objects.get_data.count.class).to eq(Integer)
  end

  it "can get name of space crafts currently in space", :vcr do
    objects = SpacePeople.new
    expect(objects.get_space_crafts.class).to eq(Array)
    expect(objects.get_space_crafts.first.class).to eq(String)
  end

  it "can get name of space crafts currently in space", :vcr do
    objects = SpacePeople.new
    expect(objects.get_people.class).to eq(Array)
    expect(objects.get_people.first.class).to eq(String)
  end
end
