require 'rails_helper'

describe "get detail about optimo route", :type => :request do
  let!(:weathers) do
    weather = Weather.new
    weather.optimo!
  end
  
  before {get '/optimo'}
  
  it 'returns detail for clima optimo' do
    expect(JSON.parse(response.body).size).to eq(2)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
