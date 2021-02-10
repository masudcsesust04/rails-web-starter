class Todo < ApplicationRecord
  belongs_to :creator, class_name: 'User'

  validates :summary, presence: true
  validates :description, presence: true
end
