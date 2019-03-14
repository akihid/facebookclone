Rails.application.routes.draw do
  resources :posts do
    collection do
      post :confirm
    end
  end
  resources :sessions
  resources :favorites , only:[:create , :destroy]
  resources :users ,only:[:new,:create,:destroy] do
    collection do
      post :confirm
    end
  end
end
