class SolarSystemService
  def self.get_response(name)
    response = Faraday.get("https://api.le-systeme-solaire.net/rest/bodies/#{name}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
