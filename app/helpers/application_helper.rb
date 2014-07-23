module ApplicationHelper
  BOOTSTRAP_FLASH_MSG = {
    success: 'alert-success',
    error: 'alert-error',
    alert: 'alert-block',
    notice: 'alert-success'
  }

  def bootstrap_class_for(flash_type)
    BOOTSTRAP_FLASH_MSG[flash_type.to_sym]
  end

  def flash_messages(opts = {})
    flash.each do |msg_type, message|
      concat(content_tag(:div, message, class: "#{bootstrap_class_for(msg_type)}") do
        concat content_tag(:button, '×'.html_safe, class: "close", data: { dismiss: 'alert' })
          concat message
      end)
    end
    nil
  end
end
