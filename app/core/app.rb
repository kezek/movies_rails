=begin
Adding factory methods to MoviesRails application;
not necessary , this is just an exercise;
failed to add class methods to MoviesRails module so
i'll settle with this
=end
# Author: Andrei Mocanu
# Class App
# Type Factory
module App
  def self.get_model
    self::Factory.get_model
  end

  def self.get_config
    self::Config.get_config
  end

  def self.registry
    self::Registry.instance
  end
end