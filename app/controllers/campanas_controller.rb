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
    @campana = Proyecto.all[id]
  end

  def aportar
  end

  def modificar
  end

  def crear
    
  end

  def borrar
  end
end
