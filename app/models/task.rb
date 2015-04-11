class Task < ActiveRecord::Base

  belongs_to :user
  has_and_belongs_to_many :charts

  validates_presence_of :description

  CHORE = 'household chore'
  MROUTINE = 'morning routine'
  EROUTINE = 'evening routine'
  TASK_TYPE = [CHORE, MROUTINE, EROUTINE]

  def is_chore
    if self.task_type.downcase == "chores" || self.task_type.downcase == "household chore"
      true
    else
      false
    end

  end

  def is_routine
    self.is_morning_routine || self.is_evening_routine
  end

  def is_morning_routine
    if self.task_type.downcase == "morning routine"
      true
    else
      false
    end
  end

  def is_evening_routine
    if self.task_type.downcase == "evening routine"
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
