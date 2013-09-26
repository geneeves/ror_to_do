class List < ActiveRecord::Base
  validates :name, :presence => true
  has_many :tasks

  def done_tasks
    self.tasks.select { |t| t.done == true }
  end

  def not_done_tasks
    self.tasks.select { |t| t.done == false }
  end
end