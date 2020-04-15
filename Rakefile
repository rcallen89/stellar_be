require 'sinatra/activerecord'
require 'sinatra/activerecord/rake'

Dir.glob(File.join('lib/tasks/**/*.rake')).each { |file| load file }

task :console do
  system 'psql stellar_BE_dev'
end

task :default do
  system 'bundle exec rspec'
end