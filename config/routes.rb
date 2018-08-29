Rails.application.routes.draw do
  get 'ecofootprintscore/new'
  get 'ecofootprintscore/create'
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', sign_up: 'register' }
  root 'welcome#index'


  resources :tips_daily, only: [:index, :show]
end
