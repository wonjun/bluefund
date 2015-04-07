class AddCrowdfundToPayments < ActiveRecord::Migration
  def change
    add_reference :payments, :crowdfund, index: true
    add_foreign_key :payments, :crowdfunds
  end
end
