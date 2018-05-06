Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  get '/random_fortune_url' => 'api/pages#random_fortunes_action'

  get '/random_number_url' => 'api/pages#number_generator_action'




end
 