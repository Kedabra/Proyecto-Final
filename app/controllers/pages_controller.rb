class PagesController < ApplicationController
  def inicio
  end

  def tienda

    if params[:buscar].present?
        @products = Product.where(' name like ?', "%#{params[:buscar]}%")
    else
      @products = Product.all
    end
  end

  def sustancias
    @information = Information.all
  end


  def informacion
  end

  def contacto
  end

  def testeado
    @testeds = Tested.all
  end

  def compras
  end

  def producto
    @product = Product.find(params[:id])
    @order = current_user.orders.find_by(payed:false)
    @products = @order.products
    @sum = @order.products.count
  end


  private
    # Use callbacks to share common setup or constraints between actions.


    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :price, :description, :photo)
    end
end
