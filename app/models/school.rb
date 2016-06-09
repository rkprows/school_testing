class School < ActiveRecord::Base
	has_many :courses
	validates_presence_of :name, :enrollment, :level
	
	def info
		"#{name} is a #{level} school with #{enrollment} students"
	end

	def school_size
		if self.enrollment >= 1000
			"Large"
		elsif self.enrollment > 500
			"Medium"
		else
			"Small"
		end
	end
end
