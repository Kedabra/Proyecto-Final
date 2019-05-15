
class OrdersController < ApplicationController
  def create
      if @order == nil
          @order = Order.new
      end

      @product = Product.find(params[:product_id])
      if @order.save
        @productorder = ProductOrder.new(product: @product, order: @order)
        @productorder.save
        redirect_to products_path, notice: "La orden a sigo ingresada"

      else
        redirect_to products_path, alert: "La orden a sigo ingresada"
      end


  end
end
