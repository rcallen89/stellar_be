require 'sinatra/activerecord'
require 'sinatra/activerecord/rake'

task :console do
  system 'psql stellar_BE_dev'
end

task :default do
  system 'bundle exec rspec'
end