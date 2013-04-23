require 'spec_helper'

describe "instructions/edit" do
  before(:each) do
    @instruction = assign(:instruction, stub_model(Instruction,
      :name => "MyString",
      :step => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit instruction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => instructions_path(@instruction), :method => "post" do
      assert_select "input#instruction_name", :name => "instruction[name]"
      assert_select "input#instruction_step", :name => "instruction[step]"
      assert_select "textarea#instruction_description", :name => "instruction[description]"
    end
  end
end
