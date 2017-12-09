class AddTokenToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :course_token, :integer
  end
end
