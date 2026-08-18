class BankReconciliationsController < ApplicationController
  def index
    @bank_reconciliations = BankReconciliation.all
  end

  def show
    @bank_reconciliation = BankReconciliation.find(params[:id])
  end

  def create
    @bank_reconciliation = BankReconciliation.new(bank_reconciliation_params)
    if @bank_reconciliation.save
      render json: @bank_reconciliation, status: :created
    else
      render json: @bank_reconciliation.errors, status: :unprocessable_entity
    end
  end

  def update
    @bank_reconciliation = BankReconciliation.find(params[:id])
    if @bank_reconciliation.update(bank_reconciliation_params)
      render json: @bank_reconciliation, status: :ok
    else
      render json: @bank_reconciliation.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @bank_reconciliation = BankReconciliation.find(params[:id])
    @bank_reconciliation.destroy
    head :no_content
  end

  private

  def bank_reconciliation_params
    params.require(:bank_reconciliation).permit(:bank_account_id, :start_date, :end_date, :status)
  end

  def set_bank_reconciliation
    @bank_reconciliation = BankReconciliation.find(params[:id])
  end
end
