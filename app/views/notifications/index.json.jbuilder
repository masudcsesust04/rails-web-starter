json.array! @notifications do |notification|
  json.id notification.id
  #json.recipient notification.recipient.name
  json.actor notification.actor.name
  json.action notification.action
  json.notifiable do
    json.type "a #{notification.notifiable.class.to_s.underscore.humanize.downcase}"
  end
  #TODO: construct URL based on nofificable_type
  json.url todo_path(notification.notifiable, anchor: dom_id(notification.notifiable))
end
