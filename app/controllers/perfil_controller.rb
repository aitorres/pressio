class PerfilController < ApplicationController
	def inicio
		if usuario_signed_in?
			@nombre = current_usuario.usuario
		end

	end

	def inversor
		lista_proyectos = Proyecto.all
		for i in 1..lista_proyectos.length
			if current_usuario.id == lista_proyectos.id
				@inversor = lista_proyectos.
			end
		end
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
