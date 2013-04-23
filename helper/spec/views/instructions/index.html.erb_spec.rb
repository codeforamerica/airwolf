require 'spec_helper'

describe "instructions/index" do
  before(:each) do
    assign(:instructions, [
      stub_model(Instruction,
        :name => "Name",
        :step => "Step",
        :description => "MyText"
      ),
      stub_model(Instruction,
        :name => "Name",
        :step => "Step",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of instructions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Step".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
