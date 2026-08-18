class FinancialTransactionsController < ApplicationController
  before_action :set_financial_transaction, only: [ :show, :update, :destroy ]

  def index
    @financial_transactions = FinancialTransaction.all
  end

  def show
    @financial_transaction = FinancialTransaction.find(params[:id])
  end

  def create
    @financial_transaction = FinancialTransaction.new(financial_transaction_params)
    if @financial_transaction.save
      render json: @financial_transaction, status: :created
    else
      render json: @financial_transaction.errors, status: :unprocessable_entity
    end
  end

  def update
    @financial_transaction = FinancialTransaction.find(params[:id])
    if @financial_transaction.update(financial_transaction_params)
      render json: @financial_transaction, status: :ok
    else
      render json: @financial_transaction.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @financial_transaction = FinancialTransaction.find(params[:id])
    @financial_transaction.destroy
    head :no_content
  end

  private
  def financial_transaction_params
    params.require(:financial_transaction).permit(:amount, :chart_of_account_id, :due_date, :organization_id, :payment_date, :status, :transaction_type)
  end

  def set_financial_transaction
    @financial_transaction = FinancialTransaction.find(params[:id])
  end
end
