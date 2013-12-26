require 'spec_helper'

describe "kinds/show" do
  before(:each) do
    @kind = assign(:kind, stub_model(Kind,
      :movie => nil,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Name/)
  end
end
