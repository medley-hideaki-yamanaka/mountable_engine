# frozen_string_literal: true
require './engines/admin/lib/proto/admin/user_services_pb'
require './engines/book/app/public/book/book_server'

module Admin
  class UserServer < UserService
    def get_user(request, _unused_call = nil)
      # 他のエンジンのクラスを呼び出す
      book_server = Book::BookServer.new
      book = book_server.get_book(Book::BookRequest.new(id: 1))

      # 自分のエンジンのクラスを呼び出す
      user = UserQuery.new.call(request.id)
      UserResponse.new(name: user.name, book_title: book.title)
    end
  end
end
