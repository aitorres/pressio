class InvertirController < ApplicationController
  def invertir
    @idc = params[:id]
    @inversion = Inversion.new
  end

  def invertir2
    puts params[:inversion]
    @inversion = Inversion.new(invertir_params)

    respond_to do |format|
      if @inversion.save
        campana = Proyecto.find_by(id: params[:inversion][:campana])
        campana.dinero_obtenido += params[:inversion][:dinero].to_i
        campana.save
        format.html { redirect_to '/perfil', notice: '¡Has realizado tu aporte satisfactoriamente! ;-)' }
        format.json { render :show, status: :created, location: @inversion }
      else
        format.html { render :crear }
        format.json { render json: @inversion.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def invertir_params
    params.require(:inversion).permit(:usuario, :dinero, :campana)
  end
end
