class SpacePeopleService
  def get_data
    response = Faraday.get('http://api.open-notify.org/astros.json')
    JSON.parse(response.body, symbolize_names: true)[:people]
  end

  def get_space_crafts
    response = Faraday.get('http://api.open-notify.org/astros.json')
    json = JSON.parse(response.body, symbolize_names: true)[:people]
    json.map { |object| object[:craft] }.uniq
  end

  def get_names
    response = Faraday.get('http://api.open-notify.org/astros.json')
    json = JSON.parse(response.body, symbolize_names: true)[:people]
    json.map { |object| object[:name] }
  end
end
