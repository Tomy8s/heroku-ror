class AddTagToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :tag, :string
  end
end
