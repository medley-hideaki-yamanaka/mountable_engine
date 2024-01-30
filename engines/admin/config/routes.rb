Admin::Engine.routes.draw do
  resources :users, :controller => 'users', only: [:index, :new, :show, :edit, :create, :update, :destroy]
end
