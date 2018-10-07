Rails.application.routes.draw do
  devise_for :users
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
	devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'

      }
   root to: 'spaces#index'
   
   resources :spaces do
    resources :space_images
    resource :favorites, only: [:create, :destroy]
    resource :reservations
   end
   resources :users
   resources :genres
   resources :categories
   resources :facilitys
   resources :amenities
   resources :space_images, only: [:destroy]
   
   post "spaces/:space_id/reservations/confirm" => "reservations#confirm" ,as:"confirm"
   post "spaces/:space_id/reservations/change" => "reservations#change" ,as:"change"
   get "spaces/:id/categoryfacility/new" => "spaces#category_facility", as: "new_category_facility"
   patch "spaces/:id/categoryfacility/new" => "spaces#create_category_facility", as: "create_category_facility"
   patch "space/:id" => "spaces#space_images_deleate", as: "space_images_deleate"

end
