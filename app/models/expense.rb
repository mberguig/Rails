class Expense < ApplicationRecord
    belongs_to :payer, class_name:"User", foreign_key: "user_id"
    has_and_belongs_to_many :beneficiaries, class_name:"User", foreign_key:"user_id"
end
