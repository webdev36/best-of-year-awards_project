module ControllerMacros
  def login_user
    before(:each) do      
      user = FactoryGirl.create(:user)
      user.confirm!
      
    end
  end
end