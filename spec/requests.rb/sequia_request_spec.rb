require 'rails_helper'

describe "get detail about sequia route", :type => :request do
  let!(:weathers) do
    weather = Weather.new
    weather.sequia!
  end
  
  before {get '/sequia'}
  
  it 'returns detail for clima sequia' do
    expect(JSON.parse(response.body).size).to eq(2)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
