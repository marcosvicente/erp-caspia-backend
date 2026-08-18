class ChartOfAccountsController < ApplicationController
  before_action :set_chart_of_account, only: [ :show, :update, :delete ]

  def index
    @chart_of_accounts = ChartOfAccount.all
  end

  def show
    @chart_of_account = ChartOfAccount.find(params[:id])
  end

  def create
    @chart_of_account = ChartOfAccount.new(chart_of_account_params)
    if @chart_of_account.save
      render json: @chart_of_account, status: :created
    else
      render json: @chart_of_account.errors, status: :unprocessable_entity
    end
  end

  def update
    if @chart_of_account.update(chart_of_account_params)
      render json: @chart_of_account, status: :ok
    else
      render json: @chart_of_account.errors, status: :unprocessable_entity
    end
  end

  def delete
    @chart_of_account.destroy
    head :no_content
  end

  private

  def chart_of_account_params
    params.require(:chart_of_account).permit(:name, :code, :account_type, :parent_id)
  end
  def set_chart_of_account
    @chart_of_account = ChartOfAccount.find(params[:id])
  end
end
