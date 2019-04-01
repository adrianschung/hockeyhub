require 'rails_helper'

RSpec.describe "error pages" do

  it "displays the 404 page when not found" do
    expect{
      visit "/foo"
    }.to raise_error(ActionController::RoutingError)
  end

end
