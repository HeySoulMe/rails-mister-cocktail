Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only: [:new, :create]
  end

  resources :doses, only: [:destroy]

 # resources :restaurants, only: [ :index, :create, :show, :new ] do
 #    resources :reviews, only: [ :new, :create ]

    # resources :cocktails, only: [ :index, :create, :show, :new ] do
    #   resources :ingredient, only: [ :new, :create ],
    # end
    # resources :cocktails, only: [ :index, :create, :show, :new ] do
    #   resources :doses, only: [ :new, :create ]
    # end
end
