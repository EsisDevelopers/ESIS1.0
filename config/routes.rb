ESIS10::Application.routes.draw do
  
  namespace :admins do
	root :to => "dashboard#index"
	#get "dashboard/index"
  end
  
  namespace :academico do
	root :to => "secciones#index"
	resources :encuestas
	resources :secciones
  end
  
  
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  #devise_for :admins, :controllers => {:sessions => "admin/sesiones" }
  resources :users do
    member do
      resource :estudiante
    end 
  end
end
