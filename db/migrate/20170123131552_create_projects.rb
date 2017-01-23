class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :image_url
      t.string :repo_url
      t.text :tech, array: true, default: []

      t.timestamps null: false
    end
  end
end
