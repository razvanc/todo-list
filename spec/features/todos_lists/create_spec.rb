require 'spec_helper'

describe "Created todos lists" do
    it "redirects to the todos lists index page on success" do
        visit "/todos_lists"
        click_link "New Todos list"
        expect(page).to have_content("New todos_lists")
    end

end