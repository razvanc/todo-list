require 'spec_helper'

describe "todos_lists/show" do
  before(:each) do
    @todos_list = assign(:todos_list, stub_model(TodosList,
      :title => "Title",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
  end
end
