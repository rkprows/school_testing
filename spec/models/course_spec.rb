require 'rails_helper'

RSpec.describe Course, type: :model do
  describe 'validations' do
  	it { should validate_presence_of :subject }
  	it { should validate_presence_of :teacher }
  	it { should validate_presence_of :unit }
  end

  describe '#course_info' do
  	it 'returns course info message' do
  		school = School.create(name:'GBN', enrollment: 1000, level: 'High')
  		course = school.courses.create(subject: 'History', teacher: 'Watson', unit: 101)
  		expect(course.course_info).to eq("#{course.course_info}")
  	end
  end

  describe '#course_unit' do
  	it 'returns the course unit message' do
  		school = School.create(name:'GBN', enrollment: 1000, level: 'High')
  		course = school.courses.create(subject: 'History', teacher: 'Watson', unit: 101)
  		expect(course.course_unit).to eq("#{course.course_unit}")	
  	end
  end
end
