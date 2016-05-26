module ApplicationHelper
  def show_active(current_path)
    "active" if current_page?(current_path)
  end

  def show_disable(is_disable)
    "disabled" if is_disable
  end
end
