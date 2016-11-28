require "spec_helper"

RSpec.feature "DatabaseServer", :type => :feature do
  xscenario "Set key value pair in params memory" do
    visit "/set?key=value"
    expect(session).to be({:key=>:value})
  end
end
