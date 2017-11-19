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

  def buscar
    # Si no hay slug, mostrar camp ode búsqueda y un easter egg.
    # Si hay, entonces hacer busqueda en DB y mostrar resultados en links
  end

  def ver
    id = params[:id].to_i
    id -= 1
    @campana = Proyecto.all[id]
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
    params.require(:proyecto).permit(:autor, :nombre, :sinopsis, :descripcion, :solicita_talentos, :solicita_dinero)
  end
end
