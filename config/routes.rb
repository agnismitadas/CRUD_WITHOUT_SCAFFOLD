Rails.application.routes.draw do
  root "pens#index"
  # get 'pens/index'
  # get 'pens/view'
  # get 'pens/edit'
  # get "/pens", to: "pens#index"
  # get "/pens/:id", to: "pens#show"
  resources :pens
end
