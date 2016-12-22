require "better/pdfjs/rails/version"

module Better
  module Pdfjs
    module Rails
      class Engine < ::Rails::Engine
        initializer "better-pdfjs-rails" do |app|
          app.config.assets.precompile += %w(pdf.js pdf.worker.js viewer.js generic/web/viewer.js generic/web/viewer.css generic/web/compatability.js)
        end
      end
    end
  end
end
