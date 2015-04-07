class Payment < ActiveRecord::Base
  belongs_to :crowdfund
  belongs_to :user
end
