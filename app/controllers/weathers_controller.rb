class WeathersController < ApplicationController
  def clima
    weather = Weather.find(params['dia'])

    render json: { dia: weather.id, clima: weather.weather_type }, status: :found
  rescue ActiveRecord::RecordNotFound => e
    render status: :not_found
  end

  def sequia
    sequia = Weather.weather_types['sequia']
    total_sequia = Weather.where(weather_type: sequia).count

    render json: { count: total_sequia, clima: sequia }
  end

  def optimo
    optimo = Weather.weather_types['optimo']
    total_optimo = Weather.where(weather_type: optimo).count

    render json: { count: total_optimo, clima: optimo }
  end

  def lluvia
    lluvia = Weather.weather_types['lluvia']
    lluvias = Weather.where(weather_type: lluvia).order(perimeter: :desc)

    render json: { count: lluvias.count, clima: lluvia, maximo_perimetro: lluvias.first.perimeter }
  end
end
