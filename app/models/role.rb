class Role < ApplicationRecord
  has_many :user_roles
  has_many :users, through: :user_roles

  validates :name, presence: true
  validates :description, presence: true

  scope :published, -> () { where(published: true) }
  scope :unpublished, -> () { where(published: false) }
  scope :not_admin, -> () { where.not(id: self.first) }
end
