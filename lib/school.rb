class School
	attr_accessor(:name, :roster)

	def initialize(school)
		@school = school
		@roster = {}
	end
	
	def add_student(student_name,grade)
		@roster[grade] ||= [] 
		@roster[grade ] << student_name
	end

	def grade(students_grade)
		@roster[students_grade]
	end

	def sort
		
		sorted = {}
		
		@roster.each do |grade,student|
			@roster[grade] = student.sort
		end
	end
end

# code here!
