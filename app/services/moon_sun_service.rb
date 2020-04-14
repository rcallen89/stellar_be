require 'json'
require 'net/http'
require 'active_support/core_ext/hash'

class MoonSunService
  def get_response(location)
    response = Net::HTTP.get_response(URI.parse("http://api.worldweatheronline.com/premium/v1/astronomy.ashx?key=#{ENV['MOON_SUN_API_KEY']}&q=#{location}")).body
    json_response = Hash.from_xml(response).to_json
    JSON.parse(json_response, symbolize_names: true)[:data][:time_zone]
  end
end
