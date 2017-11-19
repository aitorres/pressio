class TalentoController < ApplicationController
	def listar
		@talento = Talento.all
	end
	
end
