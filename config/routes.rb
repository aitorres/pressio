Rails.application.routes.draw do
  get 'perfil/inicio'

  get 'perfil/inversor'

  get 'perfil/talentos'

  get 'perfil/creador'

  get 'campanas/listar'

  get 'campanas/buscar'

  get 'campanas/visualizar'

  get 'campanas/aportar'

  devise_for :usuarios
  get 'paginas/inicio'

  get 'paginas/quienes_somos'

  get 'paginas/equipo'

  root to: 'paginas#inicio'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
