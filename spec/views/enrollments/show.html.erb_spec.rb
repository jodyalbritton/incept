require 'spec_helper'

describe "enrollments/show" do
  before(:each) do
    @enrollment = assign(:enrollment, stub_model(Enrollment,
      :user_id => 1,
      :school_id => 2,
      :major => "Major",
      :course_of_study => "Course Of Study",
      :credit_hours => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Major/)
    rendered.should match(/Course Of Study/)
    rendered.should match(/3/)
  end
end
