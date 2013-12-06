module ApplicationHelper
  def print_today_date
    Date.today.strftime("%A %m/%d/%Y")
  end
end
