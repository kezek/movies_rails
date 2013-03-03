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

  describe "GET homepage" do
    it "should route to static_pages#home" do
      { get: "/" }.should route_to("static_pages#home")
    end
  end

  describe "GET '/contact'" do
    it "should route to static_pages#contact" do
      { get: "/contact"}.should route_to("static_pages#contact")
    end
  end
end