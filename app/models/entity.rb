class Entity < ActiveRecord::Base
	include ConnectionMethods
	has_and_belongs_to_many :works
  attr_accessible :name, :type
end
