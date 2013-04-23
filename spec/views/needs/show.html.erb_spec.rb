require 'spec_helper'

describe "needs/show" do
  before(:each) do
    @need = assign(:need, stub_model(Need,
      :name => "Name",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Description/)
  end
end
