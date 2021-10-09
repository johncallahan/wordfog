module ApplicationHelper
  def base64_image image_data
    "<img src='data:image/png;base64,#{image_data}' />".html_safe
  end
end
