class Work < ActiveRecord::Base
	include ConnectionMethods
  attr_accessible :title, :type
end
