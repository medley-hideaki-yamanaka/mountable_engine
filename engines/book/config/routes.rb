Book::Engine.routes.draw do
  resources :books, :controller => 'books', only: [:index, :new, :show, :edit, :create, :update, :destroy]
end
