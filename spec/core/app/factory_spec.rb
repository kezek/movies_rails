require 'spec_helper'

describe 'Factory' do

  it 'should be a Singleton' do
    App::Factory.instance.should be_a(Singleton)
  end
end