require 'spec_helper'
# http://everydayrails.com/2012/04/07/testing-series-rspec-controllers.html

describe Api::UsersController do
  describe "GET #index" do
    it "should return an a JSON and be successful" do
      get :index
      response.headers['Content-Type'].should include 'application/json'
      response.should be_success
    end
    it 'should return one entry' do
      FactoryGirl.create(:user)
      get :index
      puts ActiveSupport::JSON.decode(response.body).length.should == 1
    end

  end
end