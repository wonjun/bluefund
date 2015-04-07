class AddLocationToProjects < ActiveRecord::Migration
  def change
    add_reference :projects, :location, index: true
    add_foreign_key :projects, :locations
  end
end
