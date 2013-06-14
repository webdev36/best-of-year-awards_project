require 'spec_helper'

describe OrdersController do

  describe "GET 'success'" do
    it "returns http success" do
      get 'success'
      response.should be_success
    end
  end

  describe "GET 'failure'" do
    it "returns http success" do
      get 'failure'
      response.should be_success
    end
  end

end
