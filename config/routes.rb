Rails.application.routes.draw do
  get '/tell_your_fortune' => 'fortunes#get_fortune'
  get '/lotto_numbers' => 'fortunes#get_numbers'
  get '/page_count' => 'fortunes#counting_method'

end
