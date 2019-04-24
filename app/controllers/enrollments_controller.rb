class EnrollmentsController < ApplicationController
  def new
    
  end 

  def show
  end
  
  def create
    @enrollment = Enrollment.new(params['course']['course_id]'])
  end 
  
end
