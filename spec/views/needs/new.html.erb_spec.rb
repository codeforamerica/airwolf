require 'spec_helper'

describe "needs/new" do
  before(:each) do
    assign(:need, stub_model(Need,
      :name => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new need form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => needs_path, :method => "post" do
      assert_select "input#need_name", :name => "need[name]"
      assert_select "input#need_description", :name => "need[description]"
    end
  end
end
