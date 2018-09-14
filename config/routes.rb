Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', sign_up: 'register' }
  root 'welcome#index'

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'register', to: 'devise/registrations#new'
  end

  get '/themes' => 'themes#index'
  resources :tips_daily, only: [:index, :show]

  get '/challenges/waste' => 'challenges#waste'
  get '/challenges/organic' => 'challenges#organic'
  get '/challenges/food' => 'challenges#food'
  get '/challenges/body' => 'challenges#body'
  get '/challenges/clean' => 'challenges#clean'
  get '/challenges/home' => 'challenges#home'
  get '/challenges/water' => 'challenges#water'
  get '/challenges/biodiversity' => 'challenges#biodiversity'
  get '/challenges/wellness' => 'challenges#wellness'
  get '/challenges/fashion' => 'challenges#fashion'
  get '/challenges/travel' => 'challenges#travel'
  get '/challenges/energy' => 'challenges#energy'
  get '/challenges/fair-trade' => 'challenges#fair-trade'
  get '/challenges/economics' => 'challenges#economics'
end
