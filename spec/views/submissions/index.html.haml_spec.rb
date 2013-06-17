require 'spec_helper'

describe "submissions/index" do
  before(:each) do
    assign(:submissions, [
      stub_model(Submission,
        :title => "Title",
        :description => "MyText",
        :status => "Status",
        :active => false,
        :created_at =>'2012/5/10'
      ),
      stub_model(Submission,
        :title => "Title",
        :description => "MyText",
        :status => "Status",
        :active => false,
        :created_at =>'2012/5/10'
      )
    ])
  end

  it "renders a list of submissions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
