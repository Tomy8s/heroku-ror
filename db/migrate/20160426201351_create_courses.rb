class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :by
      t.references :courses_site, index: true, foreign_key: true
      t.integer :rating
      t.integer :complete
      t.text :description
      t.text :learnt

      t.timestamps null: false
    end
  end
end
