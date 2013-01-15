module ApplicationHelper

  def display_login
    if !current_user
      link_to "Sign Me In", new_user_session_path
    else
      link_to "Sign Out", destroy_user_session_path, confirm: 'Are you sure you want to logout?', :method => :delete
    end
  end

  def date_format(date)
    date.to_date.strftime("#{date.to_date.day.ordinalize} %B %Y")
  end

end
