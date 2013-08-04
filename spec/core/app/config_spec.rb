require 'spec_helper'

describe 'Config' do
  it 'should be a Singleton' do
    App::Config.instance.should be_a(Singleton)
  end
end