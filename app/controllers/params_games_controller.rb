class ParamsGamesController < ApplicationController
  def name_enter
    input_value = params["my_name"]
    input_value = input_value.upcase
    render json: { message: "Your name is #{input_value}!" }
  end

  def number_guess
    number = rand(1..100)
    input_value = params["number_guess"]
    render json: { message: "The mumber is #{number}, the number you chose is, #{input_value}!" }
  end
end
