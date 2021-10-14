Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/params_game" => "params_games#name_enter"
  get "/guess_number" => "params_games#number_guess"
  get "/numbers:variable_one/:variable_2" => "params_games#numbers"
  get "guess_query/:wildcard" => "params_games#guess_query"
  get "/number_guess" => "params_games#guess_query"
end
