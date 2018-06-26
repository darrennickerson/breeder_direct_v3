Rails.application.routes.draw do
  
  resources :logs

  resources :animals do
  
    delete :delete_image_attachment
  end
  get 'static/home'

  devise_for :users, :controllers => { registrations: 'registrations' }
   resources :user do
     resources :animals
   end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
