class AddAllowedToLogInToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :allowed_to_log_in, :boolean, default: true, after: :last_sign_in_ip
  end
end
