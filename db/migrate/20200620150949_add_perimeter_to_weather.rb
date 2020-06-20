class AddPerimeterToWeather < ActiveRecord::Migration[5.2]
  def change
    add_column :weathers, :perimeter, :float
  end
end
