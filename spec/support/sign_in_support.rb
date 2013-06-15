#module for helping controller specs
module ValidUserHelper
  def signed_in_as_a_valid_user
    @user ||= FactoryGirl.create :user
    sign_in @user # method from devise:TestHelpers
  end
end

# module for helping request specs
module ValidUserRequestHelper

  # for use in request specs
  def sign_in_as_a_valid_user
    @user ||= FactoryGirl.create :user
    post_via_redirect user_session_path, 'user[email]' => @user.email, 'user[password]' => @user.password
  end

  # signs in by actually visiting the sign in page
  def sign_in_via_form
    @user = FactoryGirl.create(:user)
    visit new_user_session_path
    fill_in_login_form
  end

  def sign_in_as_admin
    @user = FactoryGirl.create(:user, role:"admin")
    visit new_user_session_path
    fill_in_login_form
  end

  def fill_in_login_form
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Sign in'
  end
end

RSpec.configure do |config|
  config.include ValidUserHelper, type: :controller
  config.include ValidUserRequestHelper, type: :request
end