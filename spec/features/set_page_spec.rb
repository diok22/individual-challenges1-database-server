require "spec_helper"

RSpec.feature "DatabaseServer", :type => :feature do
  xscenario "The set page exists" do
    visit "/set"
    expect(status_code).to be(200)
  end
end
