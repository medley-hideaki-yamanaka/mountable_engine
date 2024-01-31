# frozen_string_literal: true
require './engines/book/lib/proto/book/book_services_pb'

module Book
  class BookServer < BookService
    def get_book(request, _unused_call = nil)
      book = Book.find(request.id)
      BookResponse.new(title: book.title)
    end
  end
end
