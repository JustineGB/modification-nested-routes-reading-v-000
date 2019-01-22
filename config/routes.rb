Rails.application.routes.draw do

  resources :authors, only: [:show, :index] do
    resources :posts, only: [:show, :index, :new]  #this gives us access to /authors/:id/posts/new and the helper new_author_post_path 
  end

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  root 'posts#index'
end
