class TalentoController < ApplicationController
	def listar
		@talento = Talento.all
	end

    def aplicar
        if params[:id].nil?
            redirect_to '/talentos'
        else
            @idc = params[:id]
            @campana = Proyecto.find(@idc)
            @lista = @campana.talentos.split(",")
            @talento = Talento.new
        end
    end

    def aplicar2
        puts params[:tal]
        @talento = Talento.new(talentos_params)

        respond_to do |format|
          if @talento.save
            campana = Proyecto.find_by(id: params[:tal][:campana])
            campana.save
            format.html { redirect_to "/campanas/ver/#{params[:tal][:campana]}", notice: '¡Has aplicado a este equipo satisfactoriamente! ;-)' }
            format.json { render :show, status: :created, location: @talento }
          else
            format.html { render :aplicar }
            format.json { render json: @talento.errors, status: :unprocessable_entity }
          end
        end
    end

    private
    def talentos_params
        params.require(:tal).permit(:usuario, :talento, :campana)
    end
end
