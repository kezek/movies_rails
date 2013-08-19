require 'spec_helper'
# http://everydayrails.com/2012/04/07/testing-series-rspec-controllers.html

describe Api::UsersController do
  describe "GET #index" do
    it 'should return an a JSON and be successful' do
      get :index
      response.headers['Content-Type'].should include 'application/json'
      response.should be_success
    end
    it 'should return one entry' do
      FactoryGirl.create(:user)
      get :index
      ActiveSupport::JSON.decode(response.body).length.should == 1
    end
  end

  describe "POST #create" do
    it 'should respond with proper JSON' do
      attrs = FactoryGirl.attributes_for(:user)
      post :create , attrs , :format => :json
      JSON.parse(response.body)['email'].should == attrs[:email]
    end
  end

  describe "PUT #update" do
    it 'should respond with proper JSON' do
      user = FactoryGirl.create(:user)
      attrs = {:id => user.id, :email => 'asdad',:password =>'212231231'}
      put :update , attrs , :format => :json
      JSON.parse(response.body)['email'].should == attrs[:email]
    end
  end

  describe "DELETE #destory" do
    it 'should respond with proper JSON' do
      user = FactoryGirl.create(:user)
      delete :destroy , {:id => user.id}
      JSON.parse(response.body)['id'].should == user.id
    end

    it 'should delete the record' do
      user = FactoryGirl.create(:user)
      delete :destroy , {:id => user.id}
      expect {User.find(user.id)}.to raise_error ActiveRecord::RecordNotFound
    end
  end
end