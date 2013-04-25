require 'spec_helper'

describe "steps/new" do
  before(:each) do
    assign(:step, stub_model(Step,
      :name => "MyString",
      :stepnumber => 1,
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new step form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => steps_path, :method => "post" do
      assert_select "input#step_name", :name => "step[name]"
      assert_select "input#step_stepnumber", :name => "step[stepnumber]"
      assert_select "textarea#step_description", :name => "step[description]"
    end
  end
end
