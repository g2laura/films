require 'spec_helper'

describe "kinds/index" do
  before(:each) do
    assign(:kinds, [
      stub_model(Kind,
        :movie => nil,
        :name => "Name"
      ),
      stub_model(Kind,
        :movie => nil,
        :name => "Name"
      )
    ])
  end

  it "renders a list of kinds" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
