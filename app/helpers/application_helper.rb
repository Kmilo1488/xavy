module ApplicationHelper
  def activity_difficulty(activity)
    if activity.difficulty == "low"
      content_tag(:span, "#{activity.difficulty}", class: "badge badge-primary")
    elsif activity.difficulty == "medium"
      content_tag(:span, "#{activity.difficulty}", class: "badge badge-warning")
    else
      content_tag(:span, "#{activity.difficulty}", class: "badge badge-danger")
    end
  end
end
