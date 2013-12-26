require 'spec_helper'

describe "people/edit" do
  before(:each) do
    @person = assign(:person, stub_model(Person,
      :movie => nil,
      :name => "MyString",
      :image => "MyString"
    ))
  end

  it "renders the edit person form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", person_path(@person), "post" do
      assert_select "input#person_movie[name=?]", "person[movie]"
      assert_select "input#person_name[name=?]", "person[name]"
      assert_select "input#person_image[name=?]", "person[image]"
    end
  end
end