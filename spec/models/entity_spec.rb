require 'spec_helper'

describe Entity do
  it "does math correctly" do
    value = 4
    value.should eq(4)
  end

  it "has the correct attributes" do
  	@entity = Entity.create!(name: "John Doe")
  	@entity.should { respond_to(:name) }
  end

  it "subclasses should have the correct type" do
  	@employee = Employee.create!(name: "SpongeBob SquarePants")
  	@employee.type.should eq("Employee")
  end
end
