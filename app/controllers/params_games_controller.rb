class ParamsGamesController < ApplicationController
  def name_enter
    input_value = params["my_name"]
    input_value = input_value.upcase
    render json: { message: "Your name is #{input_value}!" }
  end
end
