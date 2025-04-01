class GroupExpense < ApplicationRecord
  belongs_to :group
  belongs_to :user

  default_scope { order(date: :desc) }
end
