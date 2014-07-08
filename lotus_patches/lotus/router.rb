module Lotus
  class Router
    # To support defining routes in the `define` wrapper.
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
    #   define do
    #     get # ...
    #   end
    def define(&blk)
      instance_eval(&blk) if block_given?
    end
  end
end
