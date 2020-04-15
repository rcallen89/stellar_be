require 'faraday'
require 'pry'
require './app/models/solar_system_api'

task :translate do
  response = Faraday.get("https://api.le-systeme-solaire.net/rest/bodies")
  json = JSON.parse(response.body, symbolize_names: true)
  
  json[:bodies].each do |body|
    id = body[:id]
    name = body[:englishName]
    
    SolarSystemApi.create({object_id: id, eng_name: name})
  end
end