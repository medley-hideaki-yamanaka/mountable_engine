module Blog
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
    connects_to database: { writing: :blog, reading: :blog }
  end
end
