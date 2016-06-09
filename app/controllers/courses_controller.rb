class CoursesController < ApplicationController
 	before_action :school
  before_action :course, except: [:index, :new, :create]
  def index
  	@courses = @school.courses
  end

  def show
  end

  def new 
  	@course = Course.new
  end

  def create
  	@course = @school.create_course(course_params)
  	if @course.save
  		flash[:success] = 'Course was created!'
  		redirect_to school_course_path(@school, @course)
  	else
  		render :new
  	end
  end

  def edit
  end

  def update
  	if @course.update(course_params)
  		flash[:success] = 'Course updated'
  		redirect_to school_course_path(@school, @course)
  	else
  		render :edit
  	end
  end

  def destroy
  	@course.destroy
  	flash[:success] = 'Course deleted'
  	redirect_to school_courses_path
  end

  private

  def course
  	@course = Course.find(params[:id])
  end

  def course_params
  	params.require(:course).permit(:subject, :teacher, :unit)
  end

  def school
  	@school = School.find(params[:school_id])
  end
end
