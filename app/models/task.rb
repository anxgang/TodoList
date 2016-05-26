class Task < ActiveRecord::Base
  belongs_to :project
  validates :content, presence: true
end
