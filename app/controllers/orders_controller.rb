class OrdersController < ApplicationController
  respond_to :json

  def index
    respond_with Order.all
  end

  def show
    respond_with Order.find(params[:id])
  end

  def create
    respond_with Order.create(params[:order])
  end

  def update
    respond_with Order.update(params[:id], params[:order])
  end

  def destroy
    respond_with Order.destroy(params[:id])
  end
end
