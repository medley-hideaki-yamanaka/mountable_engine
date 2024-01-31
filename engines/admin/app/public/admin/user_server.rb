# frozen_string_literal: true
require './engines/admin/lib/proto/admin/user_services_pb'
require './engines/book/app/public/book/book_server'

module Admin
  class UserServer < UserService
    def get_user(request, _unused_call = nil)
      bookServer = Book::BookServer.new
      book = bookServer.get_book(Book::BookRequest.new(id: 1))
      user = UserQuery.new.call(request.id)
      UserResponse.new(name: user.name, book_title: book.title)
    end
  end
end
