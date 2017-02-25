class CreateTefls < ActiveRecord::Migration
  def change
    create_table :tefls do |t|
      t.string :link
      t.text :description
      t.integer :visited

      t.timestamps null: false
    end
  end
end
