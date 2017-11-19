class PerfilController < ApplicationController
	def inicio
		if usuario_signed_in?
			@usuario = current_usuario
			#@campanas = Proyecto.find(autor = current_usuario.id)

		else
			redirect_to "/iniciar-sesion"
		end

	end

	def inversor
		#@inversor = 
		#@cantidad_inversor
	end

	def talentos
		#@talentos = 
		#@cantidad_talentos
	end

	def creador
		# @creados
		# @cantidad_creados
	end
end