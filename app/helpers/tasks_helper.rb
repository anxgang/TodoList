module TasksHelper
  def checked_style(is_done)
    is_done ? "glyphicon glyphicon-check" : "glyphicon glyphicon-unchecked"
  end
end
