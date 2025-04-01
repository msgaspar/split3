class HomeController < ApplicationController
  def index
    @groups = Current.user.groups
    @latest_expenses = Current.user.expenses.last(10)

    @current_month_total = Expense.where(user: Current.user, date: Time.current.beginning_of_month..Time.current.end_of_month).pluck(:value).reduce(:+)

    last_month = Time.current - 1.month
    @last_month_total = Expense.where(user: Current.user, date: last_month.beginning_of_month..last_month.end_of_month).pluck(:value).reduce(:+)
  end
end
