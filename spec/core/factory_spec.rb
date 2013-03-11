require 'spec_helper'

describe MoviesRails do
  it "should have a static factory method getModel" do
    MoviesRails.should respond_to :getModel
  end
end