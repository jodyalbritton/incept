require 'spec_helper'

describe "enrollments/new" do
  before(:each) do
    assign(:enrollment, stub_model(Enrollment,
      :user_id => 1,
      :school_id => 1,
      :major => "MyString",
      :course_of_study => "MyString",
      :credit_hours => 1
    ).as_new_record)
  end

  it "renders new enrollment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => enrollments_path, :method => "post" do
      assert_select "input#enrollment_user_id", :name => "enrollment[user_id]"
      assert_select "input#enrollment_school_id", :name => "enrollment[school_id]"
      assert_select "input#enrollment_major", :name => "enrollment[major]"
      assert_select "input#enrollment_course_of_study", :name => "enrollment[course_of_study]"
      assert_select "input#enrollment_credit_hours", :name => "enrollment[credit_hours]"
    end
  end
end
