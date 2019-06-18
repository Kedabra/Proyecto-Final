
class OrdersController < ApplicationController

  def create
    @order = current_user.orders.find_by(payed:false)
    if @order == nil
        @order = Order.new(user: current_user )
    end

    @product = Product.find(params[:product_id])
    if @order.save
      @productorder = ProductOrder.new(product: @product, order: @order)
      @productorder.save
      flash.now[:alert] = 'Producto agregado!'

    else
      flash.now[:alert] = 'Producto no agrgado!'
    end


  end

  def index
    @orders = current_user.orders
  end

  def delete_product
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to product_path
  end

  def shopping
    @order = current_user.orders.find_by(payed:false)
    @products = @order.products
  end
end
