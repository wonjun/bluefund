class AddProjectToCrowdfund < ActiveRecord::Migration
  def change
    add_reference :crowdfunds, :project, index: true
    add_foreign_key :crowdfunds, :projects
  end
end
