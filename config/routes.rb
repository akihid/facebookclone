Rails.application.routes.draw do
  resources :posts , only:[:index , :new ,:create , :edit , :update , :destroy]do
    collection do
      post :confirm
    end
  end
  resources :sessions , only:[:new ,:create , :destroy]
  resources :favorites , only:[:create , :destroy]
  resources :users ,only:[:new , :create , :destroy] do
    collection do
      post :confirm
    end
end
