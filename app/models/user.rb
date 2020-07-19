# frozen_string_literal: true

class User < ApplicationRecord
  has_many :user_roles
  has_many :roles, through: :user_roles, dependent: :destroy
  has_many :todos, foreign_key: :creator_id

  # Include default devise modules. Others available are:
  # :confirmable, :omniauthable, :secure_validatable, :session_limitable, :expirable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable,
         :trackable, :validatable, :lockable, :timeoutable, :password_expirable, :password_archivable

  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validate  :password_policy

  def active_for_authentication?
    super && self.allowed_to_log_in?
  end

  def password_policy
    # Regexp extracted from https://stackoverflow.com/questions/19605150/regex-for-password-must-contain-at-least-eight-characters-at-least-one-number-a
    return if password.blank? || password =~ /(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-])/

    errors.add :password, 'Complexity requirement not met. Please use: 1 uppercase, 1 lowercase, 1 digit and 1 special character'
  end

  def has_role?(role_sym)
    roles.any? { |r| r.name.underscore.to_sym == role_sym }
  end
end
