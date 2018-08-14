Rails.application.routes.draw do
  root 'welcome#index'

  resources :tips_daily, only: [:index, :show] 
end
