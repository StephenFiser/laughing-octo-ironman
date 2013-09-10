class TeamsController < ApplicationController
	def create
		@team = Team.new
		@team.save
	end
end
