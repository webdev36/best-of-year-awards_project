require 'spec_helper'

describe "submissions/new" do
  before(:each) do
    assign(:submission, stub_model(Submission,
      :title => "MyString",
      :description => "MyText",
      :status => "MyString",
      :active => false
    ).as_new_record)
  end

  it "renders new submission form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", submissions_path, "post" do
      assert_select "input#submission_title[name=?]", "submission[title]"
      assert_select "textarea#submission_description[name=?]", "submission[description]"
      assert_select "input#submission_status[name=?]", "submission[status]"
      assert_select "input#submission_active[name=?]", "submission[active]"
    end
  end
end
