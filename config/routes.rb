Rails.application.routes.draw do
  root 'welcome#index'

  get '/login' => 'login#index'

  resources :tips_daily, only: [:index, :show]
end
