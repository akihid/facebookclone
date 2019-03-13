Rails.application.routes.draw do
  resources :users ,only:[:new,:create,:destroy] do
    collection do
      post :confirm
    end
  end
end
