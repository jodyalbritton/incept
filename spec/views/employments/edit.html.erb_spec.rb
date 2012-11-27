require 'spec_helper'

describe "employments/edit" do
  before(:each) do
    @employment = assign(:employment, stub_model(Employment,
      :user_id => 1,
      :school_id => 1,
      :major => "MyString",
      :course_of_study => "MyString",
      :credit_hours => 1
    ))
  end

  it "renders the edit employment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => employments_path(@employment), :method => "post" do
      assert_select "input#employment_user_id", :name => "employment[user_id]"
      assert_select "input#employment_school_id", :name => "employment[school_id]"
      assert_select "input#employment_major", :name => "employment[major]"
      assert_select "input#employment_course_of_study", :name => "employment[course_of_study]"
      assert_select "input#employment_credit_hours", :name => "employment[credit_hours]"
    end
  end
end
