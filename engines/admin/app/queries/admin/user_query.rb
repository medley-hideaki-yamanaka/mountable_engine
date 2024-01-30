# frozen_string_literal: true

module Admin
  class UserQuery
    def call(id)
      User.find(id)
    end
  end
end
