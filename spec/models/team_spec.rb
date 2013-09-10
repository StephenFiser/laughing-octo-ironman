require 'spec_helper'

describe Team do
  it "is composed of employees" do
  	team = Team.create!(name: "Dunder Mifflin")
  	jim = Employee.create!(name: "Jim Halpert")
  	dwight = Employee.create!(name: "Dwight Shrute")
  	team << jim
  	team << dwight
  	team.members.each do |member|
  		member.type.should eq("Employee")
  	end
  end

  it "is not composed of something else" do
  	# add some testing for things that aren't employees
  end
end
