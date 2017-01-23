class AddLiveUrlToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :live_url, :string
  end
end
