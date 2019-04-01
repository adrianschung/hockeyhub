require 'rails_helper'

RSpec.describe "error pages" do

  it "displays the 404 page when not found" do
    visit "/foo"
    expect(page).to have_content("Error 404: Page not found")
  end

end
