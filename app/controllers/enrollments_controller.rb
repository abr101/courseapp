class EnrollmentsController < ApplicationController
  def index
  end

  def new
  	@enrollment = Enrollments.new
  	
  end

  def update
  	@enrollment = Enrollment.create(params: .require(:enrollment).permit(:course_id, :student_id))
  	redirect_to enrollment_path(@enrollment.student)
  	
  end

  def destroy
  	@enrollment = Enrollments.find(params[:id])
  	@student = @enrollment.student
  	@enrollment.destroy
  	redirect_to student_path(@student)
  	
  end
end
