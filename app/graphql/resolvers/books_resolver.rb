require './engines/book/app/public/book/book_server'

module Resolvers
  class BooksResolver < GraphQL::Schema::Resolver
    type Types::BookType, null: false
    argument :id, String, required: true

    def resolve(params)
      # 他のエンジンのメソッドを呼び出す
      server = Book::BookServer.new
      server.get_book(Book::BookRequest.new(id: params[:id].to_i))
    end
  end
end