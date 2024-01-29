# frozen_string_literal: true

class AllArticlesQuery
  def call
    ::Article.all
  end
end

