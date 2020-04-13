class ImageOfTheDayService
  def get_image
    response = Faraday.get("https://api.nasa.gov/planetary/apod?api_key=#{ENV['NASA_API_KEY']}")
    JSON.parse(response.body, symbolize_names: true)
  end
end