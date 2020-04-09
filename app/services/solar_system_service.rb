class SolarSystem
  def get_bodies
    response = Faraday.get('https://api.le-systeme-solaire.net/rest/bodies/')
    JSON.parse(response.body, symbolize_names: true)[:bodies]
  end
end
