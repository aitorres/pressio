Rails.application.routes.draw do
  get 'campanas/crear'

  get 'perfil/inicio'

  get 'perfil/inversor'

  get 'perfil/talentos'

  get 'perfil/creador'

  get 'campanas/listar'

  get 'campanas/buscar'

  get 'campanas/visualizar'

  get 'campanas/aportar'

  get 'paginas/inicio'

  get 'paginas/quienes_somos'

  get 'paginas/equipo'

  root to: 'paginas#inicio'

  devise_for :usuario, :path => '', :path_names => { :sign_in => "iniciar-sesion", :sign_out => "cerrar-sesion", :sign_up => "registro" }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
