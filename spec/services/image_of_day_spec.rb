require 'spec_helper'
require './app/services/image_of_the_day_service.rb'

RSpec.describe "IOD NASA Api", type: :request do
  it "can get a successful response from the api", :vcr do
    service = ImageOfTheDayService.new
    response = service.get_image

    expect(response.class).to eq(Hash)
    expect(response.has_key?(:date)).to eq(true)
    expect(response.has_key?(:explanation)).to eq(true)
    expect(response.has_key?(:title)).to eq(true)
    expect(response.has_key?(:url)).to eq(true)
  end
end