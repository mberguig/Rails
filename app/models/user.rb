class User < ApplicationRecord
    has_many :expenses
    has_and_belongs_to_many :donates, class_name: "Expense", foreign_key: "expense_id"
end
