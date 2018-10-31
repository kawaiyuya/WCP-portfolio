Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
      mount ActionCable.server => '/cable'
  namespace :admins do
    resources :admins
    resources :spaces
    resources :geres
    resources :amenities
    resources :users
    resources :chats
    resources :reservations
    resources :rooms
  end

  get "admins" => "admin#index"

  devise_for :admins, controllers: {
      sessions:      'admins/sessions',
      passwords:     'admins/passwords',
      registrations: 'admins/registrations'
    }



	devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'

      }
   root to: 'spaces#index'
   
   resources :spaces do

    resources :space_images
    resources :reservations
    resource :favorites, only: [:create, :destroy]
   end

   resources :users
   
   resources :genres
   resources :categories
   resources :facilitys
   resources :amenities
   resources :rooms do
     resources :comments
   end
   resources :space_images, only: [:destroy]
   get 'rooms/create/:id' => 'rooms#create', as: "create_room"
   post "spaces/:space_id/reservations/confirm" => "reservations#confirm" ,as:"confirm"
   post "spaces/:space_id/reservations/change" => "reservations#change" ,as:"change"
   get "spaces/:id/categoryfacility/new" => "spaces#category_facility", as: "new_category_facility"
   patch "spaces/:id/categoryfacility/new" => "spaces#create_category_facility", as: "create_category_facility"
   patch "space/:id" => "spaces#space_images_deleate", as: "space_images_deleate"
   get "genres/:genre_id/search/" => "searchs#show", as:"search"
   get "user/:id/reservations" => "reservations#user_reservations",as:"user_reservations"
end
