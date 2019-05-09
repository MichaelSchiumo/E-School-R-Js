class EnrollmentsController < ApplicationController
  def new
    
  end 

  def show
  end
  
  def create
    if logged_in?
    # @enrollment = Enrollment.new(params['course']['course_id]'])
      @enrollment = Enrollment.new(user_id: @current_user.id, course_id: params['course']['course_id'])
      #binding.pry
      if @enrollment.save
        redirect_to "/courses/#{@enrollment.course.id}"
      else
        redirect_to '/enrollments/new'
      end
    else
     # binding.pry
      redirect_to '/enrollments/new'
    end
  end 
  
end
