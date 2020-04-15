class SpacePeopleService
  def self.get_data
    response = Faraday.get('http://api.open-notify.org/astros.json')
    JSON.parse(response.body, symbolize_names: true)[:people]
  end
end
