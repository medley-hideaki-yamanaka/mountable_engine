Blorgh::Engine.routes.draw do
  resources :articles, :controller => 'articles', only: [:index, :new, :show, :edit, :create, :update, :destroy]

  # get '/articles/new' => 'articles#new', as: :new_article
  # get '/articles/:id' => 'articles#show', constraints: { id: /[0-9]+/ }, as: :show_article
  # get '/articles' => 'articles#index', as: :index_article
end
