# frozen_string_literal: true

module Blog
  class AllArticlesQuery
    def call
      Article.all
    end
  end
end

