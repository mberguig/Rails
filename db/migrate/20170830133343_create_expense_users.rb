class CreateExpenseUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :expense_users, id: false do |t|
      t.integer :expense_id
      t.integer :user_id

      t.timestamps
    end
  end
end
