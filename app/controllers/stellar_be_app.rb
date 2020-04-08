# This is essentially the Routes File!
require "sinatra"
require "sinatra/namespace"

# class StellarBeAPP < Sinatra::Base
  namespace '/api' do
    namespace '/v1' do
      get "/humans" do
        require "pry"; binding.pry
        erb 'humans/show'.to_sym
      end
    end
  end
# end
