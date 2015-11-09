resources :books
resources :authors
get '/', to: 'home#index', as: :home
