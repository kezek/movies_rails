module App
  class Registry
    include Singleton

    attr_reader :data

    def initialize
      @data = {}
    end

    def set(key, value = nil)
      @data[key.to_s] = value
      self
    end

    def get(key)
      @data[key]
    end
  end
end