module ApplicationHelper

  def format_date(expense)
    l(expense.date, format: "%d %b %Y")
  end

end
