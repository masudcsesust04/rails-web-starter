class Todo < ApplicationRecord

  belongs_to :creator, class_name: 'User'
  belongs_to :assignee, class_name: 'User'

  validates :title, presence: true
  validates :description, presence: true
  validates :assignee, presence: true
end
