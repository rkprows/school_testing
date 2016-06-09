class Course < ActiveRecord::Base
	belongs_to :school
	validates_presence_of :subject, :teacher, :unit

	def course_info
		"#{subject} is taught by #{teacher}"
	end

	def course_unit
		"#{unit} is a #{subject} class"
	end

end
