module Lotus
  class Router
    # To support defining routes in the `routes` wrapper.
    #
    # @example In Lotus framework
    #   class Application < Lotus::Application
    #     configure do
    #       routes 'config/routes'
    #     end
    #   end
    #
    #   # In `config/routes`
    #
    #   routes do
    #     get # ...
    #   end
    def routes(&blk)
      instance_eval(&blk) if block_given?
    end
  end
end
