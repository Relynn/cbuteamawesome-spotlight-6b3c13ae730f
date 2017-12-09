class AddCourseIdToPresentationBlocks < ActiveRecord::Migration
  def change
    add_column :presentation_blocks, :course_id, :integer
  end
end
