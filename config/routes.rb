Rails.application.routes.draw do
  resources :animals
  get 'static/home'

  devise_for :users, :controllers => { registrations: 'registrations' }
   devise_scope :users do
      get '/delete' => 'registrations#delete'

    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
