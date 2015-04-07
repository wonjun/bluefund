class Project < ActiveRecord::Base
  belongs_to :creator
  belongs_to :location
  has_one :crowdfund
  has_and_belongs_to_many :project_tags
  # The state machine diagram is here: TODO
  # This statemachine models the flow of a grant from the draft stage to the finished stage
  state_machine initial: :draft do
    state :pending
    state :crowdfunding
    state :paused
    state :rejected
    state :finished

    event :submit do
      transition draft: :pending
    end

    event :crowdfund do
      transition pending: :crowdfunding
    end

    event :pause do
      transition crowdfunding: :paused
    end

    event :resume do
      transition paused: :crowdfunding
    end

    event :reject do
      transition [:pending, :crowdfunding, :paused] => :rejected
    end

    event :fund do
      transition crowdfunding: :success
    end
  end
end
