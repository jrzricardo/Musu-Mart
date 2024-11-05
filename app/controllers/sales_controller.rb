class SalesController < ApplicationController
  def new
    @sale = Sale.new
  end

  def create
    @sale = Sale.new(sale_params)
    if @sale.save
      redirect_to sales_path, notice: 'Sale recorded successfully.'
    else
      render :new
    end
  end

  private

  def sale_params
    params.require(:sale).permit(:timestamp, :quantity_sold)
  end
end
