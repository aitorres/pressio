class PerfilController < ApplicationController
	def inicio
		if usuario_signed_in?
			@nombre = current_usuario.email
		end

	end

	def inversor
		@inversor = 
		@cantidad_inversor
	end

	def talentos
		@talentos = 
		@cantidad_talentos
	end

	def creador
		@creados
		@cantidad_creados
	end
end
