class Project < ActiveRecord::Base
  # The state machine diagram is here: TODO
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
