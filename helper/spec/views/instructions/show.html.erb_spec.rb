require 'spec_helper'

describe "instructions/show" do
  before(:each) do
    @instruction = assign(:instruction, stub_model(Instruction,
      :name => "Name",
      :step => "Step",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Step/)
    rendered.should match(/MyText/)
  end
end
