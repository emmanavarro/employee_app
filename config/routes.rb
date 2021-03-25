Rails.application.routes.draw do
  root 'welcome#index'
  resources :employees do
    collection { post :import }
  end
end
