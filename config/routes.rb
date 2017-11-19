Rails.application.routes.draw do
  get 'invertir/invertir'
  get '/invertir/:id' => 'invertir#invertir', constraints: { :id => /[0-9]+(\%7C[0-9]+)*/ }

  post '/invertir/invertir' => 'invertir#invertir2'
  post '/invertir/:id' => 'invertir#invertir2', constraints: { :id => /[0-9]+(\%7C[0-9]+)*/ }

  get 'campanas/crear'

  get 'perfil/inicio'
  get 'perfil/' => 'perfil#inicio'

  get 'perfil/inversor'

  post '/campanas/crear' => 'campanas#crear2'

  get 'perfil/talentos'

  get 'perfil/creador'

  get 'campanas/listar'

  get 'campanas/' => 'campanas#listar'

  get '/campanas/listar/:pagina' => 'campanas#listar', constraints: { :pagina => /[0-9]+(\%7C[0-9]+)*/ }

  get 'campanas/buscar'

  get 'campanas/ver'

  get '/campanas/ver/:id' => 'campanas#ver', constraints: { :id => /[0-9]+(\%7C[0-9]+)*/ }

  get 'campanas/aportar'

  get 'paginas/inicio'

  get 'paginas/quienes_somos'

  get 'paginas/equipo'

  get '/quienes-somos' => 'paginas#quienes_somos'

  get '/equipo' => 'paginas#equipo'

  get '/talentos' => 'talento#listar'
  get '/talentos/aplicar/:id' => 'talento#aplicar', constraints: { :id => /[0-9]+(\%7C[0-9]+)*/ }

  post '/talentos/aplicar/:id' => 'talento#aplicar2', constraints: { :id => /[0-9]+(\%7C[0-9]+)*/ }

  root to: 'paginas#inicio'

  devise_for :usuario, :controllers => { registrations: 'registro' }, :path => '', :path_names => { :sign_in => "iniciar-sesion", :sign_out => "cerrar-sesion", :sign_up => "registro" }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
