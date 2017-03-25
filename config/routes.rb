Rails.application.routes.draw do

  get 'homes/show'

  devise_for :admins, skip: [:sessions]
  as :admin do
    get '/admins/posts' => 'admins/posts#index', as: :admin_root
    get 'signin', to: 'devise/sessions#new', as: :new_admin_session
    post 'signin', to: 'devise/sessions#create', as: :admin_session
    delete 'signout', to: 'devise/sessions#destroy', as: :destroy_admin_session
  end

  namespace :admins do
    resources :posts do
      root 'posts#index'
      put 'publish' => 'posts#publish', on: :member
      put 'unpublish' => 'posts#unpublish', on: :member
    end
  end

  match '/contacts',     to: 'contacts#new', via: 'get'
  resources "contacts", only: [:new, :create]
  resources:home


    scope module: 'blog' do
    root to: 'posts#index'
    get 'archive' => 'pages#archive', as: :archive
    get 'posts' => 'posts#index', as: :posts
    get 'posts/:id' => 'posts#show', as: :post
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
