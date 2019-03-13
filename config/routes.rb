Rails.application.routes.draw do
  resources :posts
  resources :sessions
  resources :users ,only:[:new,:create,:destroy] do
    collection do
      post :confirm
    end
  end
end
