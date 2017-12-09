class AddCourseCodeAndUsersToCourse < ActiveRecord::Migration
  def change
    #add_reference :courses, :users, index: true
    #add_column :courses, :course_code, :string
  end
end
