FactoryGirl.define do
	factory :school, class: School do
		name 'Wescott'
		level 'Elementary'
		location 'Northbrook, IL'
	
		trait :small do 
			enrollment 200
		end

		trait :medium do
			enrollment 600
		end

		trait :large do
			enrollment 1500
		end
	end
end