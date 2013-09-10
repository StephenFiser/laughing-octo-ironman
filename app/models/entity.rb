class Entity < ActiveRecord::Base
	include ConnectionMethods
  attr_accessible :name, :type
end
