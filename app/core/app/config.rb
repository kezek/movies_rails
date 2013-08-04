#module App
#  def self.getConfig
#
#  end
#
#  def self.getModelsConfig
#    Config.test
#  end
#
#  class Config
#    private
#    def test
#
#    end
#  end
#end
module App
  class Config
    include Singleton

    def self.get_config
      'getting config'
    end
  end
end