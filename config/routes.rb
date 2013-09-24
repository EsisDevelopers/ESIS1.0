ESIS10::Application.routes.draw do
  
    
  #get "sesiones/index"
  namespace :admins do
	get "dashboard/index"
  end
  namespace :academico do
	resources :secciones
  end
  
  
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  #devise_for :admins, :controllers => {:sessions => "admin/sesiones" }
  resources :users do
	member do
		post :estudiante
		post :docente
		post :administrativo
	end
end
end
