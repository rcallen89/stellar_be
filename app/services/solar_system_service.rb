class SolarSystemService
  def get_response(name)
    name = translate(name.capitalize)
    
    response = Faraday.get("https://api.le-systeme-solaire.net/rest/bodies/#{name}")
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def translate(name)
    id = SolarSystemApi.where(eng_name: name).take
    id.object_id
  end
end
