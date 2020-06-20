require 'rails_helper'

describe "get detail about clima route", :type => :request do
  let!(:weathers) do
    weather = Weather.new
    weather.optimo!
  end

  let(:weather) do
    weather = Weather.new
    weather.optimo!

    weather
  end
  
  before {get "/clima?dia=#{weather.id}"}
  
  it 'returns detail for clima' do
    expect(JSON.parse(response.body).size).to eq(2)
  end

  it 'returns status code 302' do
    expect(response).to have_http_status(:found)
  end

  context 'when weather does not exist' do
    before {get "/clima?dia=0"}

    it 'returns status code 404' do
      expect(response).to have_http_status(:not_found)
    end
  end
end
