Rails.application.routes.draw do
  get 'likes/create'

  get 'likes/destroy'

  devise_for :users
  # resources :articles
  root 'users#index'
  get '/users' => 'users#index'
  get '/users/:id'=>'users#show', as: 'user'

  resources :articles do
    #indexを抜いたルーティングを追加するため。
    resource :like, only: [:create, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
