class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fname
      t.string :sname
      t.string :password_digest
      t.string :salt
      t.date :dob
      t.string :gender
      t.string :status

      t.timestamps null: false
    end
  end
end
