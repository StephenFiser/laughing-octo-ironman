require 'spec_helper'

require 'spec_helper'

describe TeamsController, "#create" do
  it "should create a new team" do
  	tc = TeamsController.new
    tc.create
    Team.all.length.should eq(1)
  end
end
