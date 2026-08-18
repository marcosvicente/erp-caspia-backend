class FirmsController < ApplicationController
  before_action :set_firm, only: [ :show, :update, :delete ]

  def index
    @firms = Firm.all
  end

  def show
  end

  def create
    @firm = Firm.new(firm_params)
    if @firm.save
      render json: @firm, status: :created
    else
      render json: @firm.errors, status: :unprocessable_entity
    end
  end

  def update
    if @firm.update(firm_params)
      render json: @firm, status: :ok
    else
      render json: @firm.errors, status: :unprocessable_entity
    end
  end

  def delete
    @firm.destroy
    head :no_content
  end

  private
  def firm_params
    params.require(:firm).permit(:company_name, :cnpj, :crc_number)
  end

  def set_firm
    @firm = Firm.find(params[:id])
  end
end
