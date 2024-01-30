require 'net/http'
require 'uri'
require 'json'

module Admin
  module Resolvers
    class UsersResolver < GraphQL::Schema::Resolver
      type [Admin::Types::UserType], null: false

      def resolve
        User.all
      end
    end
  end
end
