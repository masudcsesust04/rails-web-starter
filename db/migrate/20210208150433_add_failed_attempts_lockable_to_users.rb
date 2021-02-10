class AddFailedAttemptsLockableToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :failed_attempts, :integer, default: 0, null: false, after: :allowed_to_log_in # Only if lock strategy is :failed_attempts
    add_column :users, :locked_at, :datetime, after: :failed_attempts
  end
end
