class AddBeneficiariesToExpenses < ActiveRecord::Migration[5.1]
  def change
    add_column :expenses, :beneficiary_id, :integer
    add_index:expenses, :beneficiary_id
  end
end
