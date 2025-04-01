class Group < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :group_expenses

  def current_month_total
    GroupExpense.where(group: self, date: Time.current.beginning_of_month..Time.current.end_of_month).pluck(:value).reduce(:+)
  end

  def last_month_total
    last_month = Time.current - 1.month
    GroupExpense.where(group: self, date: last_month.beginning_of_month..last_month.end_of_month).pluck(:value).reduce(:+)
  end

  def current_month_total_by_user(user)
    GroupExpense.where(group: self, user: user, date: Time.current.beginning_of_month..Time.current.end_of_month).pluck(:value).reduce(:+)
  end

  def last_month_total_by_user(user)
    last_month = Time.current - 1.month
    GroupExpense.where(group: self, user: user, date: last_month.beginning_of_month..last_month.end_of_month).pluck(:value).reduce(:+)
  end

end
