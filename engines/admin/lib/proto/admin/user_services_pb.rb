# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: user.proto for package ''

require 'grpc'
require './engines/admin/lib/proto/admin/user_pb'

module Admin
  class UserService

    include GRPC::GenericService

    self.marshal_class_method = :encode
    self.unmarshal_class_method = :decode
    self.service_name = 'UserService'

    rpc :GetUser, UserRequest, UserResponse
  end

  Stub = UserService.rpc_stub_class
end
