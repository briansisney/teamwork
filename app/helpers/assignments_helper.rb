module AssignmentsHelper
  def row_color(end_date)
    now = Time.now

    if end_date.nil?
      "info" 
    elsif end_date < now + 14.days && end_date > now
      "warning"
    elsif end_date > now + 14.days
      "success"
    elsif end_date < now
      "danger"  
    end
  end

  def readable_date(date)
    if date.nil? 
      "Ongoing"
    else
      date.strftime("%B %d, %Y") 
    end
    
  end
end

