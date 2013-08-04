=begin
Adding factory methods to MoviesRails module;
not necessary , this is just an exercise
=end
# Author: Andrei Mocanu
#module Core
#
#  # Return an instance of a model by alias
#  # @return object
#  def self.get_model
#    'hello'
#  end
#
#  App
#end
#
module App
  class Factory

    include Singleton

    def self.get_model
      'aaaa'
    end
  end

end
