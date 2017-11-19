class PerfilController < ApplicationController
	def inicio
		if usuario_signed_in?
			@usuario = current_usuario
			id = current_usuario.id
			@campanas = Proyecto.where(autor:id)
			@inversiones = Inversion.where(usuario:id)

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