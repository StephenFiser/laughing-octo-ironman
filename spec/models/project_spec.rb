require 'spec_helper'

describe Project do
  it "should be composed of tasks" do
  	project = Project.create!(title: "Clean the closet")
  	task1 = Task.create!(title: "Get off the couch")
  	task2 = Task.create!(title: "Move to new apartment")
  	project << task1
  	project << task2
  	project.members.each do |member|
  		member.type.should eq("Task")
  	end
  end
end
