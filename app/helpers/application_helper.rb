module ApplicationHelper
  def base64_image image_data
    "<img src='data:image/png;base64,#{image_data}' />".html_safe
  end
  def flash_class(level)
    bootstrap_alert_class = {
      "success" => "alert-success",
      "error" => "alert-danger",
      "notice" => "alert-info",
      "alert" => "alert-danger",
      "warn" => "alert-warning"
    }
    bootstrap_alert_class[level]
  end
end
