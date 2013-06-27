require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :email => "test@eamil.com",
      :first_name => "Jhone",
      :last_name => "Smith",
      :company_name => "Hi Tech",
      :occupation => "0"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_path(@user), "post" do
      assert_select "input#user_email[name=?]", "user[email]"
      assert_select "input#user_first_name[name=?]", "user[first_name]"
      assert_select "input#user_last_name[name=?]", "user[last_name]"
      assert_select "input#user_company_name[name=?]", "user[company_name]"
      assert_select "input#user_occupation[name=?]", "user[occupation]"
    end
  end
end
