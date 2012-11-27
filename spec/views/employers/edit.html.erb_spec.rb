require 'spec_helper'

describe "employers/edit" do
  before(:each) do
    @employer = assign(:employer, stub_model(Employer,
      :name => "MyString",
      :address_1 => "MyString",
      :address_2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString",
      :url => "MyString"
    ))
  end

  it "renders the edit employer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => employers_path(@employer), :method => "post" do
      assert_select "input#employer_name", :name => "employer[name]"
      assert_select "input#employer_address_1", :name => "employer[address_1]"
      assert_select "input#employer_address_2", :name => "employer[address_2]"
      assert_select "input#employer_city", :name => "employer[city]"
      assert_select "input#employer_state", :name => "employer[state]"
      assert_select "input#employer_zip", :name => "employer[zip]"
      assert_select "input#employer_url", :name => "employer[url]"
    end
  end
end
