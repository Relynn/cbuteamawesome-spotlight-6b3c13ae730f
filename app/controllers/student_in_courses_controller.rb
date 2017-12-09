class StudentInCoursesController < ApplicationController

  def new
    @student_in_course = StudentInCourse.new
  end
  
  def create
    @sic = StudentInCourse.new(student_in_course_params)
    
    @user = current_user
    @course = Course.find_by course_token: @sic.course_token
    
    
    @student_in_course = StudentInCourse.new(user_id: @user.id, course_id: @course.id)
    if @student_in_course.save
      redirect_to c_index_path
    else
      redirect_to c_index_path
    end
  end 
  
  private

    def student_in_course_params
      params.require(:student_in_course).permit(:course_token)
    end
end
