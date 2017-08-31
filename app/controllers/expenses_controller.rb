class ExpensesController < ApplicationController
  def index
    @expenses = Expense.all
  end

  def show
      @expense = Expense.find(params[:id])
      @payer = @expense.user_id
  end

  def new
    @users = User.all
  end

  def create
       byebug
    @expense = Expense.new(expense_params)
    @expense.beneficiary_ids = expense_params[:beneficiary_ids]
    @expense.save
    

 
    redirect_to @expense
  end

  def destroy
    @expense = Expense.find(params[:id])
    @expense.destroy

    redirect_to expenses_index_path
  end
  
  private

  def expense_params
    params.require(:expense).permit(:title, :amount, :user_id).merge( params.permit(beneficiary_ids: []) )
  end


  

end
