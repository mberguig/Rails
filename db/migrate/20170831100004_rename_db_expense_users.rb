class RenameDbExpenseUsers < ActiveRecord::Migration[5.1]
  def change
    rename_table :expense_users, :expenses_users
  end
end
