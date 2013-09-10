require 'spec_helper'

describe Entity do
  it "should respond to name" do
  	entity = Entity.create!(name: "John Doe")
  	entity.should { respond_to(:name) }
  end

  it "should allow for differnt types of subclasses" do
  	employee = Employee.create!(name: "SpongeBob SquarePants")
  	employee.type.should eq("Employee")
  end

  it "should allow work to be added" do
  	entity = Entity.create!(name: "John Doe")
  	p1 = Project.create!(title: "first")
  	p2 = Project.create!(title: "second")
  	entity.works << p1
  	entity.works << p2
  	entity.works.each do |work|
  		work.type.should eq("Project")
  	end
  end
end
