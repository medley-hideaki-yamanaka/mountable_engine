# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: hoge.proto for package ''

require 'grpc'
require './packs/hoge/lib/proto/hoge/hoge_pb'

module Hoge
  class HogeService

    include GRPC::GenericService

    self.marshal_class_method = :encode
    self.unmarshal_class_method = :decode
    self.service_name = 'HogeService'

    rpc :GetHoge, HogeRequest, HogeResponse
  end

  Stub = HogeService.rpc_stub_class
end