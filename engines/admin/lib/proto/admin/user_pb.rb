# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: user.proto

require 'google/protobuf'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("user.proto", :syntax => :proto3) do
    add_message "UserRequest" do
      optional :id, :int32, 1
    end
    add_message "UserResponse" do
      optional :name, :string, 1
    end
  end
end

module Admin
  UserRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("UserRequest").msgclass
  UserResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("UserResponse").msgclass
end

