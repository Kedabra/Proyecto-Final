class OrdersController < ApplicationController
  before_action :authenticate_user!
  def create
    @order = current_user.orders.find_by(payed:false)
    if @order == nil
        @order = Order.new(user: current_user )
    end

    @product = Product.find(params[:product_id])
    if @order.save
      @productorder = ProductOrder.new(product: @product, order: @order)
      @productorder.save
      redirect_to pages_tienda_path, alert: "La orden a sigo ingresada"

    else
      redirect_to pages_tienda_path, alert: "La orden a sigo ingresada"
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
    @sum = @order.products.count

  end

  def pagar
    @order = current_user.orders.find_by(payed:false)
    @products = @order.products
    @sum = @order.products.count
  end

end
