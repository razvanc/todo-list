require 'spec_helper'

describe "todos_lists/new" do
  before(:each) do
    assign(:todos_list, stub_model(TodosList,
      :title => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new todos_list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", todos_lists_path, "post" do
      assert_select "input#todos_list_title[name=?]", "todos_list[title]"
      assert_select "textarea#todos_list_description[name=?]", "todos_list[description]"
    end
  end
end
