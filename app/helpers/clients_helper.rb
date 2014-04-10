module ClientsHelper
  def display_logo(logo)
    if logo.nil?
      '<i class="fa fa-briefcase"></i>'.html_safe
    else
      "<img src='#{logo}'/>".html_safe
    end  
  end
end
