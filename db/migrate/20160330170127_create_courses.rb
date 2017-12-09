class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      #has_many :users
      t.references :users
      t.string :name
      t.string :course_code
      t.timestamps null: false
    end
  end
end
