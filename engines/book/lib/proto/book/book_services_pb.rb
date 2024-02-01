# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: book.proto for package ''

require 'grpc'
require './engines/book/lib/proto/book/book_pb'

module Book
  class BookService

    include GRPC::GenericService

    self.marshal_class_method = :encode
    self.unmarshal_class_method = :decode
    self.service_name = 'BookService'

    rpc :GetBook, BookRequest, BookResponse
  end

  Stub = BookService.rpc_stub_class
end
