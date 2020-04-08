require_relative 'environment'
# Database set based on current environment

 # database_name = "stellar_BE_#{StellarBeAPP.environment}"
#  db = URI.parse(ENV['DATABASE_URL'] || "postgresql://localhost/#{database_name}")
#
#  ActiveRecord::Base.establish_connection(
#  :adapter => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
#  :host => db.host,
#  :port => db.port,
#  :username => db.user,
#  :password => db.password,
#  :database => "#{database_name}",
#  :encoding => 'utf8'
# )
