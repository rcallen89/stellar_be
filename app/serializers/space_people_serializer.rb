class SpacePeopleSerializer

  def self.data(response)
    {data: response}.to_json
  end
end
