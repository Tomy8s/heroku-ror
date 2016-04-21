class CreateTefls < ActiveRecord::Migration
  def change
    create_table :tefls do |t|
      t.references :user, index: true, foreign_key: true
      t.string :link
      t.text :description
      t.integer :visited

      t.timestamps null: false
    end
  end
end
