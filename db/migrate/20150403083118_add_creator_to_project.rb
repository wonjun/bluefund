class AddCreatorToProject < ActiveRecord::Migration
  def change
    add_reference :projects, :creator, index: true
    add_foreign_key :projects, :users, column: :creator_id
  end
end
