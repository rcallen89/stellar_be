class SSApiService

  def api_response(query)
    response = Faraday.get("https://api.le-systeme-solaire.net/rest.php/bodies/#{query}")
    JSON.parse(response.body, symbolize_names: true)
  end

end