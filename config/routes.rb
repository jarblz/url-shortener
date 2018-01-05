Rails.application.routes.draw do
  root 'urls#new'

  get '/:id', to: 'home#index', as: 'redirect'

  resources :urls, only: [:create, :new, :show]

end
