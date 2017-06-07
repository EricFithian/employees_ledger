Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/param_game' => 'games#param_rules'
  get '/guessing_game' => 'games#guessing'
  get '/page_counter' => 'games#page_counter'
  get '/url_segment_parameter/:this_is_a_variable' => 'games#url_segment_parameter_method'
  get '/clean_guessing_game/:guess' => 'games#guessing_cleaner_version'
  get '/form_params' => 'games#the_form'
  get '/form_guessing_game' => 'games#guessing_form'
  post '/form_answer' => 'games#guessing_answers'

end
