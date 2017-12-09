class AddCourseTokensToUsers < ActiveRecord::Migration
  def change
    add_column :users, :course_tokens, :text
  end
end
