class CleanSchema < ActiveRecord::Migration[5.1]
  def change
    remove_index :expenses, :beneficiary_id
    remove_column :expenses, :beneficiary_id
    
  end
end
