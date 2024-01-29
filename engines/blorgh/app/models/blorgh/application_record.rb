module Blorgh
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
    connects_to database: { writing: :blorgh, reading: :blorgh }
  end
end
