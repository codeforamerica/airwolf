require 'spec_helper'

describe "needs/edit" do
  before(:each) do
    @need = assign(:need, stub_model(Need,
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit need form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => needs_path(@need), :method => "post" do
      assert_select "input#need_name", :name => "need[name]"
      assert_select "input#need_description", :name => "need[description]"
    end
  end
end
