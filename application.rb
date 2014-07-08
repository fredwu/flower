require 'pry'
require 'lotus'

module Flower
  class Application < Lotus::Application
    configure do
      routes 'config/routes'

      load_paths << %w(
        lotus_patches
        app
        config/initializers
      )

      controller_pattern 'Controllers::%{controller}Controller::%{action}'
    end
  end
end
