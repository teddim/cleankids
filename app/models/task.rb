class Task < ActiveRecord::Base

  belongs_to :user
  has_and_belongs_to_many :charts

  validates_presence_of :description

  CHORE = 'household chore'
  ROUTINE = 'daily routine'
  TASK_TYPE = [CHORE, ROUTINE]

  def is_chore
    if self.task_type.downcase == "chores" || self.task_type.downcase == "household chore"
      true
    else
      false
    end

  end

  def is_routine
    if self.task_type.downcase == "daily routine"
      true
    else
      false
    end
  end

  def is_popular
    if self.times_used == 4
      true
    else
      false
    end
  end

end
