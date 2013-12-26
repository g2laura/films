require 'spec_helper'

describe "movies/edit" do
  before(:each) do
    @movie = assign(:movie, stub_model(Movie,
      :title => "MyString",
      :year => 1,
      :box => 1,
      :format => "MyString",
      :position => 1
    ))
  end

  it "renders the edit movie form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", movie_path(@movie), "post" do
      assert_select "input#movie_title[name=?]", "movie[title]"
      assert_select "input#movie_year[name=?]", "movie[year]"
      assert_select "input#movie_box[name=?]", "movie[box]"
      assert_select "input#movie_format[name=?]", "movie[format]"
      assert_select "input#movie_position[name=?]", "movie[position]"
    end
  end
end
