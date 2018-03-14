module ApplicationHelper

  ALERT_TYPES = [:danger, :success, :warning].freeze

  def flash_message

    flash_messages = []

      flash.each do |type, message|
        next if message.blank?

        type = :success if type == 'notice'
        type = :warning  if type == 'alert'
        type = :danger  if type == 'error'

        next unless ALERT_TYPES.include?(type)

        Array(message).each do |msg|
          text = content_tag :div, message, :class => "alert alert-#{type}"
          flash_messages << text if msg
        end
      end
      flash_messages.join("\n").html_safe
  end
end
