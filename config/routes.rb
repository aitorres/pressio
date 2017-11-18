Rails.application.routes.draw do
  devise_for :usuarios
  get 'paginas/inicio'

  get 'paginas/quienes_somos'

  get 'paginas/equipo'

  root to: 'paginas#inicio'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
