Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"
  mount Admin::Engine => "/admin"
  mount Blog::Engine => "/blog"
  mount Book::Engine => "/book"
end
