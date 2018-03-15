Rails.application.routes.draw do

  devise_for :users

  root to: "home#index"

  resources :tournaments do
    resources :tournament_members
  end
  
  resources :teams do
    resources :team_members
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
