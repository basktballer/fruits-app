class Api::V1::LineItemsController < ApplicationController
  def index
    render json: LineItem.all
  end
  
  def create
    line_item = LineItem.create(line_item_params)
    render json: line_item
  end

  def destroy
    LineItem.destroy(params[:id])
  end

  def update
    line_item = LineItem.find(params[:id])
    line_item.update_attributes(line_item_params)
    render json: line_item
  end

  private

  def line_item_params
    params.require(:line_item).permit(:id, :name, :amount, :paid)
  end

end
