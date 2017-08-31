class AddIndexToExpenses < ActiveRecord::Migration[5.1]
  def change
    add_index:expenses, :user_id
  end
end
