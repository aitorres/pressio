class CampanasController < ApplicationController
  def listar
    @campanas = Proyecto.all
  end

  def buscar
  end

  def ver
    @id = params[:id]
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
