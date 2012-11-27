require 'spec_helper'

describe "schools/edit" do
  before(:each) do
    @school = assign(:school, stub_model(School,
      :name => "MyString",
      :address_1 => "MyString",
      :address_2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString"
    ))
  end

  it "renders the edit school form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => schools_path(@school), :method => "post" do
      assert_select "input#school_name", :name => "school[name]"
      assert_select "input#school_address_1", :name => "school[address_1]"
      assert_select "input#school_address_2", :name => "school[address_2]"
      assert_select "input#school_city", :name => "school[city]"
      assert_select "input#school_state", :name => "school[state]"
      assert_select "input#school_zip", :name => "school[zip]"
    end
  end
end
