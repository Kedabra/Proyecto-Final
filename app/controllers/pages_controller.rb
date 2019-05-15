class PagesController < ApplicationController
  def inicio
  end

  def tienda
    @products = Product.all
  end

  def sustancias
  end

  def informacion
  end

  def contacto
  end

  def testeado
  end

  def compras
  end

  def producto

  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @producto = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :price, :description, :photo)
    end
end
