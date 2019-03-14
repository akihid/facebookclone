Rails.application.routes.draw do
  resources :posts do
    collection do
      post :confirm
    end
    member do
      patch :confirm
    end
  end
  resources :sessions
  resources :users ,only:[:new,:create,:destroy] do
    collection do
      post :confirm
    end
  end
end
