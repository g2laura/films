require 'spec_helper'

describe "movies/new" do
  before(:each) do
    assign(:movie, stub_model(Movie,
      :title => "MyString",
      :year => 1,
      :box => 1,
      :format => "MyString",
      :position => 1
    ).as_new_record)
  end

  it "renders new movie form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", movies_path, "post" do
      assert_select "input#movie_title[name=?]", "movie[title]"
      assert_select "input#movie_year[name=?]", "movie[year]"
      assert_select "input#movie_box[name=?]", "movie[box]"
      assert_select "input#movie_format[name=?]", "movie[format]"
      assert_select "input#movie_position[name=?]", "movie[position]"
    end
  end
end
