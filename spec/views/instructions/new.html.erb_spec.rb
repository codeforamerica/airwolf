require 'spec_helper'

describe "instructions/new" do
  before(:each) do
    assign(:instruction, stub_model(Instruction,
      :name => "MyString",
      :step => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new instruction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => instructions_path, :method => "post" do
      assert_select "input#instruction_name", :name => "instruction[name]"
      assert_select "input#instruction_step", :name => "instruction[step]"
      assert_select "textarea#instruction_description", :name => "instruction[description]"
    end
  end
end
