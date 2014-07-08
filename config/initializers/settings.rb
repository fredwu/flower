module Flower
  class Application
    def self.settings
      @settings ||= OpenStruct.new(
        page_title: 'Flower'
      )
    end
  end
end
