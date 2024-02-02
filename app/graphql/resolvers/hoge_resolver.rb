# frozen_string_literal: true
require './packs/hoge/app/public/hoge/hoge_server'

module Resolvers
  class HogeResolver < GraphQL::Schema::Resolver
    type Types::HogeType, null: false

    def resolve()
      # 他のエンジンのメソッドを呼び出す
      server = Hoge::HogeServer.new
      server.get_hoge(Hoge::HogeRequest.new())
    end
  end
end