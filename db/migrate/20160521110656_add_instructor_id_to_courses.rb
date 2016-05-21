class AddInstructorIdToCourses < ActiveRecord::Migration
  def change
    add_reference :courses, :instructor, index: true, foreign_key: true
  end
end
