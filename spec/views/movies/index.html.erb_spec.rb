require 'spec_helper'

describe "movies/index" do
  before(:each) do
    assign(:movies, [
      stub_model(Movie,
        :title => "Title",
        :year => 1,
        :box => 2,
        :format => "Format",
        :position => 3
      ),
      stub_model(Movie,
        :title => "Title",
        :year => 1,
        :box => 2,
        :format => "Format",
        :position => 3
      )
    ])
  end

  it "renders a list of movies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Format".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
