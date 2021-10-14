class ParamsGamesController < ApplicationController
  def name_enter
    input_value = params["my_name"]
    input_value = input_value.upcase
    render json: { message: "Your name is #{input_value}!" }
  end

  def number_guess
    number = 36
    input_value = params["number_guess"].to_i

    if input_value == number
      output_message = "Your number is the winning number!"
    elsif number < input_value
      output_message = "Your number is too high."
    elsif number > input_value
      output_message = "Your number is too low."
    end

    render json: { message: output_message }
  end
end
