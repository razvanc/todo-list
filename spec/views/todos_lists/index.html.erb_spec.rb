require 'spec_helper'

describe "todos_lists/index" do
  before(:each) do
    assign(:todos_lists, [
      stub_model(TodosList,
        :title => "Title",
        :description => "MyText"
      ),
      stub_model(TodosList,
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of todos_lists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
