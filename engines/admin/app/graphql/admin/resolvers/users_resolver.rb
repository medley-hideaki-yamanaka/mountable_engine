module Admin
  module Resolvers
    class UsersResolver < GraphQL::Schema::Resolver
      type [Admin::Types::UserType], null: false

      def resolve
        AllUsersQuery.new.call
      end
    end
  end
end
