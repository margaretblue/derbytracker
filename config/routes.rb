Derbytracker::Application.routes.draw do
  root :to => 'bouts#index'
  resources :bouts
  resources :referees
  resources :leagues
end
