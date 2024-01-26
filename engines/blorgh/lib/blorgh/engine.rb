module Blorgh
  class Engine < ::Rails::Engine
    isolate_namespace Blorgh

    initializer "blorgh.assets.precompile" do |app|
      app.config.assets.precompile += %w( scaffold.css application.css article.css )
    end
  end
end
