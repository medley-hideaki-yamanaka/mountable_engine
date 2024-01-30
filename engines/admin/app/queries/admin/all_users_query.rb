# frozen_string_literal: true

module Admin
  class AllUsersQuery
    def call
      User.all
    end
  end
end
