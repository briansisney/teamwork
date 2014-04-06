module AssignmentsHelper
  def row_color(end_date)
    now = Time.now

    if end_date.nil?
      "info" 
    elsif end_date < now + 7.days 
      "warning"
    elsif end_date > now + 7.days
      "success"
    elsif end_date < now
      "danger"  
    end
  end

  def readable_date(date)
    date.strftime("%B %d, %Y") unless date.nil? 
  end
end
