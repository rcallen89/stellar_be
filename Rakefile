require 'sinatra/activerecord'
require 'sinatra/activerecord/rake'
require 'faraday'
require './app/models/solar_system_api'


# Dir.glob(File.join('lib/tasks/**/*.rake')).each { |file| load file }

task :console do
  system 'psql stellar_BE_dev'
end

task :default do
  system 'bundle exec rspec'
end

task :translate do
  response = Faraday.get("https://api.le-systeme-solaire.net/rest/bodies")
  json = JSON.parse(response.body, symbolize_names: true)
  
  json[:bodies].each do |body|
    id = body[:id]
    name = body[:englishName]
    
    SolarSystemApi.create({object_id: id, eng_name: name})
  end
end