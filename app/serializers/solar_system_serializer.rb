class SolarSystemSerializer

  def self.data(response)
    {data: response.slice(:englishName, :isPlanet, :moons, :aroundPlanet, :discoveredBy, :discoveryDate, :gravity)}.to_json
  end
end
