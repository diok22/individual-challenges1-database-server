require "spec_helper"

RSpec.feature "DatabaseServer", :type => :feature do
  scenario "Set key value pair in params memory" do
    visit "/set?key=value"
    expect(@memory_array[0]).to be({:key=>:value})
  end
end
