require 'rails_helper'

RSpec.describe School, type: :model do
  let(:small_school) { FactoryGirl.create(:school, :small) }
  let(:school) { FactoryGirl.create(:school, :medium) }
  let(:large_school) { FactoryGirl.create(:school, :large) }
  
  describe 'validations' do
  	it { should validate_presence_of :name}
  	it { should validate_presence_of :enrollment}
  	it { should validate_presence_of :level}
  end

  describe '#info' do
  	it 'returns school info message' do
 	 		expect(school.info).to eq("#{school.name} is a #{school.level} school with #{school.enrollment} students")
 	 	end
  end

  describe '#school_size' do
  	it "returns large if school size > 1000" do
 	 		expect(large_school.school_size).to eq("Large")
		end
		it "returns large if school size == 1000" do
 	 		expect(large_school.school_size).to eq("Large")
		end
		it "returns large if school size > 500" do
 	 		expect(school.school_size).to eq("Medium")
		end
		it "returns large if school size < 500" do
 	 		expect(small_school.school_size).to eq("Small")
		end
	end
end
