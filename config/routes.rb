Rails.application.routes.draw do
 root 'schools#index'

 resources :schools do
 	resources :courses
 end
end
