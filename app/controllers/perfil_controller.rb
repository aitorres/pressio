class PerfilController < ApplicationController
	def inicio
		if usuario_signed_in?
			@usuario = current_usuario
		end
		puts current_usuario.nombre
		puts "SEXOSEO"

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
