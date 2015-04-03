class CreateCrowdfunds < ActiveRecord::Migration
  def change
    create_table :crowdfunds do |t|
      t.timestamps null: false
    end
  end
end
