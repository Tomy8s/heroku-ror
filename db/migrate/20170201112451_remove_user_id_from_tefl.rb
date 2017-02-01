class RemoveUserIdFromTefl < ActiveRecord::Migration
  def change
    remove_reference :tefls, :user, index: true, foreign_key: true
  end
end
