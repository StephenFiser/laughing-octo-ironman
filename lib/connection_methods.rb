module ConnectionMethods
  def << member
  	con = Connection.new
  	con.composite_id = self.id 
  	con.member_id = member.id ß
  	con.save
  end

  def members
  	member_ids = []
  	cons = Connection.where(composite_id: self.id).all
  	cons.each do |connection|
  		member_ids << connection.member_id
  	end
  	obj_class = self.class.superclass
  	obj_class.find(member_ids)
  end
end