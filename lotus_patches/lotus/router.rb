module LotusAccepted
  class Router
    # @see https://github.com/lotus/router/pull/17
    def define(&blk)
      instance_eval(&blk) if block_given?
    end
  end
end
