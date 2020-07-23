# frozen_string_literal: true

class NotificationsController < ApplicationController
  before_action :authenticate_user!
#  load_and_authorize_resource
#  check_authorization

  def index
    @notifications = Notification.where(recipient: current_user).unread
  end

  def total_unread
    total_unread = Notification.where(recipient: current_user).unread.count

    render json: { total: total_unread, success: true }
  end

  def mark_as_read
    @notifications = Notification.where(recipient: current_user).unread
    @notifications.update_all(read_at: Time.zone.now)

    render json: { success: true }
  end
end
