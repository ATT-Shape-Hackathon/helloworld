module ApplicationHelper
  def bootstrap_flash(key)
    case key
    when :notice
      'info'
    when :alert
      'danger'
    else key
    end
  end
end
