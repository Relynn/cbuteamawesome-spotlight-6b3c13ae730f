class AddCourseTokenToStudentInCourses < ActiveRecord::Migration
  def change
    add_column :student_in_courses, :course_token, :integer 
  end
end
