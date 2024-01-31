Blog::Engine.routes.draw do
  resources :articles, :controller => 'articles', only: [:index, :new, :show, :edit, :create, :update, :destroy]

  get '/all_articles' => 'articles#all'
  get '/user_articles/:id' => 'articles#user_articles'
end
