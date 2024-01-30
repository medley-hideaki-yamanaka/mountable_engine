# frozen_string_literal: true
require './engines/admin/lib/proto/admin/user_services_pb'

module Admin
  class UserServer < UserService
    def get_user(request, _unused_call = nil)
      user = UserQuery.new.call(request.id)
      UserResponse.new(name: user.name)
    end
  end
end
