class Crowdfund < ActiveRecord::Base
  belongs_to :project
  has_many :payments
end
