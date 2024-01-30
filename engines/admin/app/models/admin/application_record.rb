module Admin
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
    connects_to database: { writing: :admin, reading: :admin }
  end
end
