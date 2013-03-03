require 'spec_helper'

describe StaticPagesController do
  describe "GET 'home' action from 'StaticPagesController'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'contact' action from 'StaticPagesController'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  end
end