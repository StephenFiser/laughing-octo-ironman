class Work < ActiveRecord::Base
	include ConnectionMethods
	has_and_belongs_to_many :entities
  attr_accessible :title, :type
end
