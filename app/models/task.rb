
class Task < ActiveRecord::Base
  validates :description, :presence => true
  validates :list_id, :presence => true
  validates :list_id, :numericality => {:only_integer => true}

  belongs_to :list
end
