require 'net/http'
require 'uri'
require 'json'

module Resolvers
  class ArticlesResolver < GraphQL::Schema::Resolver
    type [Types::ArticleType], null: false

    def resolve
      # 他エンジンのAPIを呼び出す
      # これはpackwerkの対象外
      # ※HTTP通信はpackwerkの対象外
      uri = URI.parse("http://localhost:3000/blog/all_articles")
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = uri.scheme === "https"
      headers = { "Content-Type" => "application/json" }
      res = http.get(uri.path, headers)
      JSON.parse(res.body)
    end
  end
end