require 'net/http'
require 'uri'
require 'json'

module Resolvers
  class ArticlesResolver < GraphQL::Schema::Resolver
    type [Types::ArticleType], null: false

    def resolve
      uri = URI.parse("http://localhost:3000/blorgh/articles")
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = uri.scheme === "https"
      headers = { "Content-Type" => "application/json" }
      res = http.get(uri.path, headers)
      JSON.parse(res.body)
    end
  end
end