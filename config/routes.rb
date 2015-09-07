Rails.application.routes.draw do
  root 'results#ranking_brasil'

  resources :results
  get 'power-ranking', controller: :results, action: :ranking_brasil
  resources :teams

end
