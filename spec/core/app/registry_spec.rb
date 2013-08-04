require "spec_helper"

describe "Registry" do

  it "should be a Singleton" do
    App::Registry.instance.should be_a(Singleton)
  end

end