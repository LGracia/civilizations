require 'rails_helper'

describe "get detail about lluvia route", :type => :request do
  let!(:weathers) do
    weather = Weather.new(perimeter: rand(128..780))
    weather.lluvia!
  end
  
  before {get '/lluvia'}
  
  it 'returns detail for clima lluvia' do
    expect(JSON.parse(response.body).size).to eq(3)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
