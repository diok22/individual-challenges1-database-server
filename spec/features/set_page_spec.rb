require "spec_helper"

RSpec.feature "DatabaseServer", :type => :feature do
  scenario "The set page exists" do
    visit "/set"
    expect(status_code).to be(200)
  end
end
