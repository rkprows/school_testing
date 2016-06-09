require 'rails_helper'

RSpec.describe School, type: :model do
  describe 'validations' do
  	it { should validate_presence_of :name}
  	it { should validate_presence_of :enrollment}
  	it { should validate_presence_of :level}
  end

  describe '#info' do
  	it 'returns school info message' do
 	 		school = School.create(name: 'Wescott', enrollment: 400, level: 'K-5')
 	 		expect(school.info).to eq("#{school.name} is a #{school.level} school with #{school.enrollment} students")
 	 	end
  end

  describe '#school_size' do
  	it "returns large if school size > 1000" do
 	 		school = School.create(name: 'Wescott', enrollment: 1500, level: 'K-5')
 	 		expect(school.school_size).to eq("Large")
		end
		it "returns large if school size == 1000" do
 	 		school = School.create(name: 'Wescott', enrollment: 1500, level: 'K-5')
 	 		expect(school.school_size).to eq("Large")
		end
		it "returns large if school size > 500" do
 	 		school = School.create(name: 'Wescott', enrollment: 600, level: 'K-5')
 	 		expect(school.school_size).to eq("Medium")
		end
		it "returns large if school size < 500" do
 	 		school = School.create(name: 'Wescott', enrollment: 400, level: 'K-5')
 	 		expect(school.school_size).to eq("Small")
		end
	end
end
