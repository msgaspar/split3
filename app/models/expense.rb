class Expense < ApplicationRecord
  belongs_to :user

  default_scope { order(date: :desc) }
end
