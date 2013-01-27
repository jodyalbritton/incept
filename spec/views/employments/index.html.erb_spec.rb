require 'spec_helper'

describe "employments/index" do
  before(:each) do
    assign(:employments, [
      stub_model(Employment,
        :user_id => 1,
        :school_id => 2,
        :major => "Major",
        :course_of_study => "Course Of Study",
        :credit_hours => 3
      ),
      stub_model(Employment,
        :user_id => 1,
        :school_id => 2,
        :major => "Major",
        :course_of_study => "Course Of Study",
        :credit_hours => 3
      )
    ])
  end

  it "renders a list of employments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Major".to_s, :count => 2
    assert_select "tr>td", :text => "Course Of Study".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
