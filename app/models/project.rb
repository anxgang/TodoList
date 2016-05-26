class Project < ActiveRecord::Base
  has_many :tasks, dependent: :destroy
  validates :title, presence: true

  def is_undone
    self.tasks.where(is_done: false)
  end

  def is_done
    self.tasks.where(is_done: true)
  end
end
