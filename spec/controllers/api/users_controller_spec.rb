require 'spec_helper'

describe Api::UsersController do
  describe "GET #index" do
    it "should return an a JSON" do
      get :index
      response.headers['Content-Type'].should include 'application/json'
    end

  end
end