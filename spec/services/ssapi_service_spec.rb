require 'spec_helper'
require_relative '../../app/services/ss_api_service'

RSpec.describe "Solar System API", type: :service do
  describe 'response' do
    it 'can return a successful response', :vcr do
      service = SSApiService.new
      response = service.api_response('jupiter')

      expect(response).to be_an_instance_of(Hash)
      expect(response[:name]).to eq('Jupiter')
    end
  end
end