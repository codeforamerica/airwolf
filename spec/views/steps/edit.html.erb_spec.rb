require 'spec_helper'

describe "steps/edit" do
  before(:each) do
    @step = assign(:step, stub_model(Step,
      :name => "MyString",
      :stepnumber => 1,
      :description => "MyText"
    ))
  end

  it "renders the edit step form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => steps_path(@step), :method => "post" do
      assert_select "input#step_name", :name => "step[name]"
      assert_select "input#step_stepnumber", :name => "step[stepnumber]"
      assert_select "textarea#step_description", :name => "step[description]"
    end
  end
end
