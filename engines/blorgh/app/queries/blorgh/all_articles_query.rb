# frozen_string_literal: true

module Blorgh
  class AllArticlesQuery
    def call
      Article.all
    end
  end
end

