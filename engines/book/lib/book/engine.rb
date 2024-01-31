module Book
  class Engine < ::Rails::Engine
    isolate_namespace Book
  end
end
