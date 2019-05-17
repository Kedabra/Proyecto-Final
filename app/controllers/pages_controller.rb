class PagesController < ApplicationController
  def inicio
  end

  def tienda

    if params[:buscar].present?
        @products = Product.where('name like ?', "%#{params[:buscar]}%")
    else
      @products = Product.all
    end
  end

  def sustancias
    @informations = Information.all
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
    @product = Product.find(params[:id])
  end
  private
    # Use callbacks to share common setup or constraints between actions.


    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :price, :description, :photo)
    end
end
