class AddNameToTefls < ActiveRecord::Migration
  def change
    add_column :tefls, :name, :string
  end
end
