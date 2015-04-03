class AddCreatorToProject < ActiveRecord::Migration
  def change
    add_reference :projects, :creator, index: true
  end
end
