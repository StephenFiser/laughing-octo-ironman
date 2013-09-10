require 'spec_helper'

describe Work do
  it "responds to title" do
  	@work = Work.create!(title: "Fry Cheeseburger")
  	@work.should { respond_to(:title) }
  end

  it "should allow for different types of subclasses" do
  	@project = Project.create!(title: "Clean the garage.")
  	@project.type.should eq("Project")
  end
end
