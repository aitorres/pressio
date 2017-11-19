class CampanasController < ApplicationController
  def listar
    @campanas = Proyecto.all
    @cantidad = 10
    if !params[:pagina].blank? and !(@campanas.length < @cantidad*params[:pagina].to_i)
      @pagina = params[:pagina].to_i
    else
      @pagina = 0
    end
  end

  def ver
    id = params[:id].to_i
    @campana = Proyecto.find(id)
    @autor = Usuario.find(@campana.autor)
  end

  def aportar
  end

  def modificar
  end

  def crear
    @campana = Proyecto.new
  end

  def crear2
    puts params[:proyecto]
    @campana = Proyecto.new(campana_params)

    respond_to do |format|
      if @campana.save
        format.html { redirect_to '/campanas/listar', notice: '¡Has creado tu campaña satisfactoriamente! ;-)' }
        format.json { render :show, status: :created, location: @campana }
      else
        format.html { render :crear }
        format.json { render json: @campana.errors, status: :unprocessable_entity }
      end
    end
  end

  def borrar
  end

  private
  def campana_params
    params.require(:proyecto).permit(:autor, :dinero, :talentos, :nombre, :sinopsis, :descripcion, :solicita_talentos, :solicita_dinero)
  end
end
